//
//  ContentView15.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI
// iPad/ Ojo y VisionOS
struct ContentView15: View {
    
    @State private var heros = ["goku", "krilin", "vegeta"]
    @State private var selectedHero: String?
    
    
    var body: some View {
        NavigationSplitView {
            // Lista de heroes
            List(heros, id: \.self, selection: $selectedHero, rowContent: Text.init)
        } detail: {
            // Detalle
            Text(selectedHero ?? "Por favor seleccione un heroe")
        }

    }
}

#Preview {
    ContentView15()
}
