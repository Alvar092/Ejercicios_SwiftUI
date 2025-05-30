//
//  03ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 27/5/25.
//

import SwiftUI

struct _3ContentView: View {
    var body: some View {
        VStack{
            Image(systemName: "house")
                .resizable()
                .frame(width: 200, height: 200)
                
            Divider()
            
            // DEscargar una imagen de la red solo con la URL
            AsyncImage(url: URL(string:"https://i.blogs.es/9d9332/stevejobs/450_1000.webp")) { Image in
                // Aqui closure cuando se descarga la imagen
                Image
                    .resizable()
            } placeholder: {
                // Que pongo mientras se descarga
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(3)
            }

        }
    }
}

#Preview {
    _3ContentView()
}
