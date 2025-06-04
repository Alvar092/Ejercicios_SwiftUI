//
//  HerosViewModel.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 4/6/25.
//

import Foundation

@Observable
final class HerosViewModel {
    // Publicadores
    var herosData = [HerosModel]()
    var filterUI: String = ""
    
    private var useCaseHeros: HerosUseCaseProtocol
    
    init(useCase: HerosUseCaseProtocol = HerosUseCase()){
        self.useCaseHeros = useCase
        
        Task {
           await self.getHeros()
        }
    }
    
    @MainActor // Es de UI así que hay que mandarlo al hilo principal
    func getHeros (newSearch: String = "") async {
        let data = await useCaseHeros.getHeros(filter: "")
        self.herosData = data
    }
}
