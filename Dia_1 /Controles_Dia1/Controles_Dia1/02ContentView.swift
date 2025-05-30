//
//  02ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 27/5/25.
//

import SwiftUI

struct _2ContentView: View {
    var body: some View {
        VStack{
            // Nombre 1
            HStack{
                Text("Mi nombre")
                    .bold()
                Text("Steve")
                    .font(.title)
                    .foregroundStyle(.blue)
            }//HStack
            .background(.yellow)
            // Nombre 2
            HStack{
                Text("Apellido")
                    .bold()
                Text("Jobs")
                    .font(.title)
                    .foregroundStyle(.blue)
            }//HStack
            .background(.red)
        }//VStack
        .frame(width: 300, height: 100)
        .background(.red)
        
    }//View
}// Struct

#Preview {
    _2ContentView()
}
