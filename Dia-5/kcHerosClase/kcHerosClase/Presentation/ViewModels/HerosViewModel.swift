//
//  HerosViewModel.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

@Observable
final class HerosViewModel{
    //publicadores
    var herosData = [HerosModel]()
    var filterUI: String = ""
    
    private var useCaseHeros: HerosUseCaseProtocol
    
    init(useCase : HerosUseCaseProtocol  = HerosUseCase()){
        self.useCaseHeros = useCase
        
        Task{
           await self.getHeros()
        }
    }
    
    @MainActor
    func getHeros(newSearch: String = "") async {
        let data = await useCaseHeros.getHeros(filter: newSearch)
        self.herosData = data
    }
    
    @MainActor
    func setLikeHero(idHero: String) async {
        //Call to Server
        if (await useCaseHeros.setLikeHero(idHero: idHero)){
            //Success call Server
            //Cambio el modelo en Local
            
            if let index = herosData.firstIndex(where: { $0.id.uuidString == idHero}){
                herosData[index].favorite?.toggle()
            }
            
        } else{
            //Error call server
            NSLog("Error to call server to the endpoint Like hero")
        }
    }
    
}
