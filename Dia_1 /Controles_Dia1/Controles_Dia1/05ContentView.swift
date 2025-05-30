//
//  05ControlView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct _5ContentView: View {
    
    @State var imageChange = false
    
    var body: some View {
        VStack {
            
            // Condicion ? true : false
            Image(systemName: imageChange ? "sun.max" : "cloud.drizzle")
                .resizable()
                .foregroundStyle(imageChange ? .yellow : .black)
                .frame(width: 200, height: 200)
                .padding()
            
            
            /*
             // Funciona en el 99% de los casos en rendimiento
             switch imageChange{
             case false:
             Image(systemName: "sun.max")
             .resizable()
             .foregroundStyle(.yellow)
             .frame(width: 200, height: 200)
             .padding()
             
             case true:
             Image(systemName: "cloud.drizzle")
             .resizable()
             .foregroundStyle(.black)
             .frame(width: 200, height: 200)
             .padding()
             }
             
             */
            
            Button {
                print("Click boton")
                imageChange.toggle()
            } label: {
                Text("Cambiar el tiempo")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .font(.title)
                    .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
                //                .cornerRadius(30)
                
            }// Button
        } // VStack
    }
}

#Preview {
    _5ContentView()
}
