//
//  LoginRepositoryProtocol.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import Foundation

protocol LoginRepositoryProtocol {
    func loginApp(user: String, password: String) async -> String // Devuelve el JWT
}
