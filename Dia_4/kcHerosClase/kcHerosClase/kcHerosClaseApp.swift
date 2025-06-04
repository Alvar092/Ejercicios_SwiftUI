//
//  kcHerosClaseApp.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 30/5/25.
//

import SwiftUI

@main
struct kcHerosClaseApp: App {
    @State var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(appState)
        }
    }
}
