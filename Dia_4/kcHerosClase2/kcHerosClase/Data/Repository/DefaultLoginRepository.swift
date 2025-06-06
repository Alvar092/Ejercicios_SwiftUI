//
//  DefaultLoginRepository.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

//Real
final class DefaultLoginRepository: LoginRepositoryProtocol{
    private var Network: NetworkLoginProtocol
    
    init(network: NetworkLoginProtocol = NetworkLogin()){
        Network = network
    }
    
    func loginApp(user: String, password: String) async -> String {
        return await Network.loginApp(user: user, password: password)
    }
}


//Mock
final class DefaultLoginRepositoryMock: LoginRepositoryProtocol{
    private var Network: NetworkLoginProtocol
    
    init(network: NetworkLoginProtocol = NetworkLoginMock()){
        Network = network
    }
    
    func loginApp(user: String, password: String) async -> String {
        return await Network.loginApp(user: user, password: password)
    }
}
