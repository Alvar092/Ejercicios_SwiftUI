//
//  06Contentview.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct _6ContentView: View {
    
    let heros = ["Thor", "Spiderman", "Capitan America"]
    @State var HeroSelected: String = ""
    @State private var showAlert = false
    
    var body: some View {
        
        //        List {
        //            Text("Thor")
        //            Text("Spiderman")
        //            Text("Capitan America")
        //        }
        
        VStack {
            List {
                ForEach(heros, id: \.self){ data in
                    Text(data)
                }
            }
            
            // Lista con TAP en cada elemento
            List {
                ForEach(heros, id: \.self) { data in
                    Button {
                        // Asigno valor a la propiedad de estado
                        HeroSelected = data // Asigno el nombre del heroe
                        // Muestro el alert
                        showAlert = true
                    } label: {
                        // label
                        Text(data)
                    }
                }
            }
            .alert(isPresented: $showAlert) {
                // Aqui devolvemos el alert
                Alert(title: Text("\(HeroSelected)"))
            }
        }
    }
}

#Preview {
    _6ContentView()
}
