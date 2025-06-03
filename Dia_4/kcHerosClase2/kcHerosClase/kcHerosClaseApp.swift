//
//  kcHerosClaseApp.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 28/5/25.
//

import SwiftUI

@main
struct kcHerosClaseApp: App {
    @State var AppState = AppStateVM()
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(AppState)

        }
    }
}
