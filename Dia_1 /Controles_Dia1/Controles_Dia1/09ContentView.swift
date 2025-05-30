//
//  09ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct _9ContentView: View {
    var body: some View {
        TabView{
            _8ContentView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Home")
                }
            _7ContentView()
                .tabItem {
                    Image(systemName: "cloud.fill")
                    Text("config")
                }
        }
    }
}

#Preview {
    _9ContentView()
}
