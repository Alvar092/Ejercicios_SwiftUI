//
//  kcHerosClaseApp.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 28/5/25.
//

import SwiftUI
import TipKit

@main
struct kcHerosClaseApp: App {
    @State var AppState = AppStateVM()
    
    init(){
        try? Tips.resetDatastore() //solo test
        try? Tips.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(AppState)

        }
    }
}
