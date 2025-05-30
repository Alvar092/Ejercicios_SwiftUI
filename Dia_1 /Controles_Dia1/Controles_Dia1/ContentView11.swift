//
//  11ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct ContentView11: View {
    
    @State var showDetail = false
    
    var body: some View {
        Button {
            // Action
            showDetail.toggle()
            
        } label: {
            Text("Show modal")
        }
        
        .sheet(isPresented: $showDetail) {
            DetailModalView(showDetail: $showDetail)
                //.presentationDetents([.large, .medium, .height(200)])
                .presentationDetents([.fraction(0.2)]) // 20% de pantalla
                .presentationDragIndicator(.automatic)
        }

    }
}

#Preview {
    ContentView11()
}
