//
//  PrincipalView.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import SwiftUI

struct PrincipalView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            //Tab Home
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
        
    }
}

#Preview {
    PrincipalView()
        .environment(AppStateVM())
}
