//
//  ContentView11_1.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct DetailModalView: View {
    
    // Referencia a memoria de una variable booleana
    @Binding var showDetail: Bool // opcion 1 
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        
        VStack {
            Text("Detalle modal ")
                .padding(20)
            
            Button {
                //Opcion 1
                //showDetail = false
                
                // Opcion 2: Cerramos con environment
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Text("Cerrar modal ")
                    .padding()
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(20)
            }
        }
    }
}


//#Preview {
//    @State var prueba = false
//    ContentView11(showDetail: $prueba)
//}
