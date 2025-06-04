//
//  HerosRowView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 4/6/25.
//

import SwiftUI

struct HerosRowView: View {
    var hero: HerosModel
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: hero.photo)) { photo in
                photo
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .opacity(0.9)
            } placeholder: {
                ProgressView()
            }
            // Los datos
            VStack {
                // name
                
                HStack{
                    Text(hero.name)
                        .font(.title)
                        .bold()
                        .padding(.leading, 10)
                    Spacer()
                }
                Spacer()
                
                //Corazon
                if let favorite = hero.favorite{
                    if favorite {
                    // Si lo es
                    Image(systemName: "heart.circle")
                        .resizable()
                        .foregroundStyle(.red)
                        .frame(width: 40, height: 40)
                        .padding([.leading, .bottom], 10)
                    } else {
                        // No lo es
                        Image(systemName: "heart.circle")
                            .resizable()
                            .foregroundStyle(.gray)
                            .frame(width: 40, height: 40)
                            .padding([.leading, .bottom], 10)
                    }
                }
            }
        }
    }
}

#Preview {
    HerosRowView(hero: HerosModel(id: UUID(), name: "Goku", description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.", photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300" , favorite: true))
}
