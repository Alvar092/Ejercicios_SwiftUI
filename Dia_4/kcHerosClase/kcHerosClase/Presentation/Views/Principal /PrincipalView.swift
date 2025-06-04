//
//  PrincipalView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import SwiftUI

struct PrincipalView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            // Tab home
            HerosView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            .tag(0)
            VStack{
                Text("Alumnos")
            }
            .tabItem {
                Image(systemName: "person")
                Text("Alumnos")
            }
            .tag(1)
        }
        
        Button("Sigiuiente") {
                 if selection == 1 {
                     selection = 0
                 } else{
                     selection += 1
                 }
             }
        
    }
}

#Preview {
    PrincipalView()
}
