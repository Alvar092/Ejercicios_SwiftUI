//
//  ContentView13.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct ContentView13: View {
    
    let colors: [Color] = [.red, .green, .blue, .yellow]
    
    var body: some View {
        ScrollViewReader { proxy in
        
            Button {
                withAnimation {
                    proxy.scrollTo(29, anchor: .top)
                }
                
            } label: {
                Text("Salta al 29")
            }
            
            ScrollView {
                ForEach(0..<100) { i in
                    let _ =  print(i % colors.count)
                    Text("Ejemplo \(i)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(colors[i % colors.count])
                        .id(i) // Identificador unico
                    
                    
                }
            }
        }
    }
}

#Preview {
    ContentView13()
}
