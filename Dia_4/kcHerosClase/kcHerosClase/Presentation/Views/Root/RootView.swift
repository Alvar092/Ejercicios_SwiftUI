//
//  RootView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import SwiftUI

struct RootView: View {
    @Environment(AppState.self) var appState
    
    var body: some View {
        switch (appState.status){
        case .none:
            LoginView()
        case .register:
            Text("Register")
        case .loading:
            withAnimation {
                LoaderView()
            }
        case .error(error: let errorString):
            withAnimation{
                ErrorView(error: errorString)
            }
        case .loaded:
            PrincipalView()
        }
    }
}
 
#Preview {
    RootView()
        .environment(AppState())
}
