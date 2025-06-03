//
//  RootView.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import SwiftUI

struct RootView: View {
    @Environment(AppStateVM.self) var appState
    
    var body: some View {
        switch (appState.status){
        case .none:
            LoginView()
        case .register:
            Text("Registersdfsd")
        
        case .loading:
            Text("Cargando...")
        case .error(error: let errorString):
            withAnimation {
                ErrorView(error: errorString)
            }
        case .loaded:
            PrincipalView() // Es la home...
        }
    }
}

#Preview {
    RootView()
        .environment(AppStateVM())
}
