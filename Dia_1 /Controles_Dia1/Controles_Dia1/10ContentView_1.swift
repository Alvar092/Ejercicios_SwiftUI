//
//  10ContentView_1.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct HeroDetail: View {
    var data: Hero
    
    var body: some View {
        VStack {
            Text("Yo soy ->  \(data.name)")
        }
    }
}

#Preview {
    HeroDetail(data: Hero(name: "Hero de prueba"))
}
