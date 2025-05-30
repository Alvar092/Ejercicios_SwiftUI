//
//  04ControlView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct _4ContentView: View {
    var body: some View {
        ZStack{
            Image(decorative: "linterna")
            // Image(.linterna)
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(50)
                .clipShape(Circle())
            
            
            // Capa oscura
            Image(decorative: "")
            // Image(.linterna)
                .resizable()
                .frame(width: 200, height: 200)
                .background(.black)
                .opacity(0.5)
                .clipShape(Circle())
            Text("Linterna verde")
                .foregroundStyle(.white)
                .bold()
            
            
            
            
        }
    }
}

#Preview {
    _4ContentView()
}
