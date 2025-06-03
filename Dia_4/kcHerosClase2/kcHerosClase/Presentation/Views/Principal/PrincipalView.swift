//
//  PrincipalView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

struct PrincipalView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            // Tab home
            VStack {
                Text("Es la home")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            .tag(0)
            
            VStack {
                Text("Alumnos")
            }
            .tabItem {
                Image(systemName: "person")
                Text("Home")
            }
            .tag(1)
        }
        
        Button("Siguiente") {
            if selection == 1 {
                selection = 0
            } else {
                selection += 1
            }
        }
    }
}

#Preview {
    PrincipalView()
}
