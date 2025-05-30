/*
MVVM desde iOS 17 en adelante..... usa Macros.....
 https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro
*/

import SwiftUI
import Combine
import PlaygroundSupport

//----Modelos----

struct Person: Codable, Equatable {
    let id: UUID
    let name: String
    let apells: String
    let nif: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}

enum Estados {
    case none, loading, loaded, error
}


// -----ViewModel -----

// final class ViewModelPerson: ObservableObject {
@Observable
final class ViewModelPerson: ObservableObject{

//    @Published var data: Person?
//    @Published var estado = Estados.none
    
    var data: Person?
    var estado = Estados.none
    
    @ObservationIgnored var estadoInterno: Bool = false
    
    init(){
        loadPerson()
    }
    
    //Simula una llamada asincrona
    
    func loadPerson() {
        estado = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
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
            .onChange(of: self.viewModel.data, initial: false) {
                print( "Cambia dato de la persona")
            }
            
//            .onReceive(self.viewModel.$data) { data in
//                if let datos = data {
//                    print("Cambia el dato de Person")
//                }
//            }
//            .onReceive(self.viewModel.$data){ estado in
//                print("Cambia el estado")
//            }
        }
    }
}


// Ejecutar el playground
PlaygroundPage.current.setLiveView(ContentView().frame(width: 200, height: 100))
