//
//  HerosRepositoryProtocol.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

protocol HerosRepositoryProtocol {
    func getHeros(filter: String) async -> [HerosModel]
    func setLikeHero(idHero: String) async -> Bool
}
