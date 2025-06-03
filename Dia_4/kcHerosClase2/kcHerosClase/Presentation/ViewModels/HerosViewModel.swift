//
//  HerosViewModel.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import Foundation

@Observable
final class HerosViewModel {
    // Publicadores
    var herosData = [HerosModel]()
    
    private var useCaseHeros: HerosUseCaseProtocol
    
    init(useCase: HerosUseCaseProtocol = HerosUseCase()) {
        self.useCaseHeros = useCase
    }
    
    @MainActor
    func getHeros() async {
        let data = await useCaseHeros.getHeros(filter: "")
        self.herosData = data
    }
}
