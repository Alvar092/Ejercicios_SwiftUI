//
//  HerosUseCase.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

//protocolo

protocol HerosUseCaseProtocol {
    var repo: HerosRepositoryProtocol {get set}
    
    func getHeros(filter: String) async -> [HerosModel]
    func setLikeHero(idHero: String) async -> Bool
}

final class HerosUseCase: HerosUseCaseProtocol{
    var repo: HerosRepositoryProtocol
    
    init(repo: HerosRepositoryProtocol = HerosRepository(Network: NetworkHeros())) {
        self.repo = repo
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await repo.getHeros(filter: filter)
    }
    
    func setLikeHero(idHero: String) async -> Bool {
        return await repo.setLikeHero(idHero: idHero)
    }
}


final class HerosUseCaseMock: HerosUseCaseProtocol{
    var repo: HerosRepositoryProtocol
    
    init(repo: HerosRepositoryProtocol = HerosRepositoryMock()) {
        self.repo = repo
    }
    
    func getHeros(filter: String) async -> [HerosModel] {
        return await repo.getHeros(filter: filter)
    }
    
    func setLikeHero(idHero: String) async -> Bool {
        return await repo.setLikeHero(idHero: idHero)
    }
}
