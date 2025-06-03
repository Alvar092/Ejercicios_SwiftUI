//
//  DefaultLoginRepository.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import Foundation

// Real
final class DefaultLoginRepository: LoginRepositoryProtocol {
    
    private var Network: NetworkLoginProtocol
    
    init(network: NetworkLoginProtocol = NetworkLogin()) {
        Network = network
    }
    
    func loginApp(user: String, password: String) async -> String {
        return await Network.loginApp(user: user, password: password)
    }
}

// MOck

final class DefaultLoginRepositoryMock: LoginRepositoryProtocol {
    
    private var Network: NetworkLoginProtocol
    
    init(network: NetworkLoginProtocol = NetworkLoginMock()) {
        Network = network
    }
    
    func loginApp(user: String, password: String) async -> String {
        return await Network.loginApp(user: user, password: password)
    }
}
