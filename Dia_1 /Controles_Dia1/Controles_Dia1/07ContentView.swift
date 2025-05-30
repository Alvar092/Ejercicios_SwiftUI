//
//  07ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct Hero: Identifiable {
    let id: UUID = UUID()
    let name: String
}


struct _7ContentView: View {
    
    let heros = [
        Hero(name: "Thor"),
        Hero(name: "Spiderman"),
        Hero(name: "Álvaro")
    ]
    
    var body: some View {
        List {
            ForEach(heros) { data in
                Text(data.name)
            }
        }
    }
}

#Preview {
    _7ContentView()
}
