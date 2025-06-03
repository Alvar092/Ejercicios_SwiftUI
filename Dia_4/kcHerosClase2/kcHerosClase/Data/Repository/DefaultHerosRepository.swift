//
//  DefaultHerosRepository.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import Foundation

final class HerosRepository: HerosRepositoryProtocol {
    
    private var Network: NetworkHerosProtocol
    
    init(Network: NetworkHerosProtocol = NetworkHeros()) {
        self.Network = Network
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await Network.getHeros(filter: filter)
    }
}


final class HerosRepositoryMock: HerosRepositoryProtocol {
    
    private var Network: NetworkHerosProtocol
    
    init(Network: NetworkHerosProtocol = NetworkHerosMock()) {
        self.Network = Network
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await Network.getHeros(filter: filter)
    }
}
