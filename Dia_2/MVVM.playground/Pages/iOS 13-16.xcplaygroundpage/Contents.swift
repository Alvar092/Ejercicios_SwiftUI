/*
 MVVM para iOS 13-16
 */

import SwiftUI
import Combine
import PlaygroundSupport

//----Modelos----

struct Person: Codable {
    let id: UUID
    let name: String
    let apells: String
    let nif: String
    }

enum Estados {
    case none, loading, loaded, error
}


// -----ViewModel -----

final class ViewModelPerson: ObservableObject {
    @Published var data: Person?
    @Published var estado = Estados.none
    
    init(){
        loadPerson()
    }
    
    //Simula una llamada asincrona
    func loadPerson() {
        estado = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            // Se ejecuta a los 2 segundos
            
            self.data = Person(id: UUID(), name: "Álvaro", apells: "Entrena", nif: "12345B")
            self.estado = .loaded
            
        }
    }
}



// ----Views----
struct ContentView: View {
    @StateObject private var viewModel = ViewModelPerson()
    
    var body: some View {
        switch viewModel.estado {
        case .none:
            Text("Estado none")
        case .loading:
            Text("Cargando los datos...")
        case .error:
            Text("Se ha producido un error ")
        case .loaded:
            VStack{
                if let data = viewModel.data {
                    // Maqueto la persona
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("\(data.name)")
                } else {
                    Text("sin datos")
                }
            }
            .onReceive(self.viewModel.$data) { data in
                if let datos = data {
                    print("Cambia el dato de Person")
                }
            }
            .onReceive(self.viewModel.$data){ estado in
                print("Cambia el estado")
            }
        }
    }
}


// Ejecutar el playground
PlaygroundPage.current.setLiveView(ContentView().frame(width: 200, height: 100))
