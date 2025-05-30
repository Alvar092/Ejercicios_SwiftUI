//
//  ContentView12.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct ContentView12: View {
    
    @State var name: String = ""
    @State var apell1 = ""
    @State var apell2 = ""
    @State var hasChildren = false
    private var categories = ["Programador", "Analista", "Full Stack "]
    
    @State var selectedCategory = "Analista"
    
    var body: some View {
        NavigationStack {
            Form(){
                Section("Datos personales") {
                    // Aqui los controles
                    TextField("Nombre", text: $name)
                    TextField("Apellido 1", text: $apell1)
                    TextField("Apellido 2", text: $apell2)
                }
                
                Section("Familia") {
                    Toggle("tienes hijos?", isOn: $hasChildren)
                }
                
                // Lista de la categoria profesional
                Section("Datos laborales") {
                    Picker(selection: $selectedCategory) {
                        //Aqui la lista de valores
                        ForEach(categories, id:\.self) {
                            Text($0)
                        }
                    } label: {
                        Text("Categoria empleado")
                    }
                    .pickerStyle(.wheel)
                }
                // Boton de grabar
                Section {
                    Button{
                        // TO DO: Sin accion    Aqui se llamaria a un viewModel 
                        
                    } label: {
                        HStack{
                            Spacer()
                            Text("Validar datos")
                            Spacer()
                        }
                    }
                    .foregroundStyle(.white)
                }
                .listRowBackground(Color.orange)
            }
        }
    }
}

#Preview {
    ContentView12()
}
