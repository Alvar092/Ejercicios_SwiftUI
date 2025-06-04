//
//  DefaultHerosRespository.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
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
    
    func setLikeHero(idHero: String) async -> Bool {
        return await Network.setLikeHero(idHero: idHero)
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
    
    func setLikeHero(idHero: String) async -> Bool {
        return await Network.setLikeHero(idHero: idHero)
    }
}
