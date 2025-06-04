//
//  HerosDetailView.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 3/6/25.
//

import SwiftUI

struct HerosDetailView: View {
    var hero: HerosModel //nos lo pasa el padre (HerosView)
    
    @Bindable var vmHeros: HerosViewModel //referencia al vm del padre.
    
    var body: some View {
        // Nombre del heroe y el me gusta
        HStack{
            //Ttitulo
            Text(hero.name)
                .bold()
                .font(.title)
            
            Spacer()
            
            
            //boton m gusta
            Button {
                //Action Here
                Task{
                    await vmHeros.setLikeHero(idHero: hero.id.uuidString)
                }
                
                
            } label: {
                Image(systemName: "heart.circle")
                    .resizable()
                    .foregroundStyle(hero.favorite! ? .red : .gray)
                    .frame(width: 40, height: 40)
            }
        }
        .padding([.trailing, .leading], 10)

        //foto del heroe
        AsyncImage(url: URL(string: hero.photo)){ foto in
            //me llega aqui
            foto
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding([.leading, .trailing], 20)
                .opacity(0.8)
            
            
        } placeholder: {
            ProgressView{
                Text("Cargando foto")
            }
        }
        
        //Description hero
        Text(hero.description)
            .foregroundStyle(.black)
            .font(.title2)
    }
}

#Preview {
    HerosDetailView(hero: HerosModel(id: UUID(), name: "Goku", description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.", photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300" , favorite: true), vmHeros: HerosViewModel(useCase: HerosUseCaseMock()))
}
