//
//  10ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

    
struct _0ContentView: View {
    
    let heros = [
        Hero(name: "Thor"),
        Hero(name: "Spiderman"),
        Hero(name: "Álvaro")
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(heros) { data in
                    // Cada hero
                    
                    NavigationLink {
                        // Destino al hacer tap
                        HeroDetail(data: data)
                    } label: {
                        // la celda
                        HStack {
                            Image(systemName: "person")
                            Text(data.name)
                        }
                    }
                }
            } // Lista
        } // Navigation
    }
}

#Preview {
    _0ContentView()
}
