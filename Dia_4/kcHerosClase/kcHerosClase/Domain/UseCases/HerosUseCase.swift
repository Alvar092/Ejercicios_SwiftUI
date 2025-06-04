//
//  HerosUseCase.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 4/6/25.
//

import Foundation

// Protocolo con la UI
protocol HerosUseCaseProtocol {
    var repo: HerosRepositoryProtocol {get set}
    
    func getHeros(filter: String) async -> [HerosModel]
}

final class HerosUseCase: HerosUseCaseProtocol {
    var repo: HerosRepositoryProtocol
    
    init(repo: HerosRepositoryProtocol = HerosRepository(network: NetworkHeros())) {
        self.repo = repo
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await repo.getHeros(filter: filter)
    }
}


// MOCK

final class HerosUseCaseMock: HerosUseCaseProtocol {
    var repo: HerosRepositoryProtocol
    
    init(repo: HerosRepositoryProtocol = HerosRepositoryMock()) {
        self.repo = repo
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await repo.getHeros(filter: filter)
    }
}
