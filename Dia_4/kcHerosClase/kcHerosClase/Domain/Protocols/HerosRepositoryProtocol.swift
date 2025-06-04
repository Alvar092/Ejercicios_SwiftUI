//
//  HerosRepositoryProtocol.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 4/6/25.
//

import Foundation

protocol HerosRepositoryProtocol {
    func getHeros(filter: String) async -> [HerosModel]
}
