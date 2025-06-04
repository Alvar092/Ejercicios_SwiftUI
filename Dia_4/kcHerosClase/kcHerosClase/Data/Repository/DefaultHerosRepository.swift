//
//  DefaultHerosRepository.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 4/6/25.
//

import Foundation

// REAL

final class HerosRepository: HerosRepositoryProtocol {
    private var network: NetworkHerosProtocol
    
    init(network: NetworkHerosProtocol = NetworkHeros()) {
        self.network = network
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await network.getHeros(filter: filter)
        // DE PERSISTIR EN MEMORIA, SERIA AQUI 
    }
}

// MOCK

final class HerosRepositoryMock: HerosRepositoryProtocol {
    private var network: NetworkHerosProtocol
    
    init(network: NetworkHerosProtocol = NetworkHerosMock()) {
        self.network = network
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await network.getHeros(filter: filter)
    }
}
