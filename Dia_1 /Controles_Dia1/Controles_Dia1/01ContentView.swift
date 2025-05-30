//
//  01ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 27/5/25.
//

import SwiftUI

struct _1ContentView: View {
    var body: some View {
        VStack{
            Text("Hola")
                .font(.caption)
            Spacer()
            Text("Keepcoders")
            Spacer()
            Text("Esto es SwiftUI")
        }
        .font(.largeTitle)
        .frame(width: 400, height: 400)
        .background(.blue)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
        
    }
}

#Preview {
    _1ContentView()
}
