//
//  ErrorView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

struct ErrorView: View {
    
    @Environment(AppStateVM.self) var appState
    private var textError: String
    
    init(error: String) {
        self.textError = error
    }
    
    
    var body: some View {
        VStack{
            Image(systemName: "exclamationmark.triangle")
            
        }
    }
}

#Preview {
    ErrorView(error: "Error de prueba")
}
