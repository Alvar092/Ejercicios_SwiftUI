//
//  LoginUseCase.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

protocol LoginUseCaseProtocol{
    var repo: LoginRepositoryProtocol {get set}
    
    //funciones
    func loginApp(user: String, password: String) async -> Bool
    func logout() async -> Void
    func validateToken() async -> Bool
}

///Caso de uso
final class LoginUseCase: LoginUseCaseProtocol{
    var repo: any LoginRepositoryProtocol
    
    @kcPersistenceKeyChain(key: ConstantsApp.CONST_TOKEN_ID_KEYCHAIN)
    var tokenJWT
    
    
    init(repo: LoginRepositoryProtocol = DefaultLoginRepository()){
        self.repo = repo
    }

    ///Login in the app
    func loginApp(user: String, password: String) async -> Bool {
        let token = await repo.loginApp(user: user, password: password)
        
        //guardarlo en el KeyChain
        if token != "" {
            //KeyChainKC().saveKC(key: ConstantsApp.CONST_TOKEN_ID_KEYCHAIN, value: token)
            tokenJWT = token
            return true
        } else {
            //KeyChainKC().deleteKC(key: ConstantsApp.CONST_TOKEN_ID_KEYCHAIN)
            tokenJWT = ""
            return false
        }
        
    }
    
    func logout() async {
        KeyChainKC().deleteKC(key: ConstantsApp.CONST_TOKEN_ID_KEYCHAIN)
    }
    
    //Validar si el token es valido
    func validateToken() async -> Bool {
        
        //REMEMBER: Control de caducidad en el tiempo del token
        
       // if KeyChainKC().loadKC(key: ConstantsApp.CONST_TOKEN_ID_KEYCHAIN) != "" {
        if tokenJWT != "" {
            return true //Valido si tiene token
        } else{
            return false
        }
    }
    
    
}
