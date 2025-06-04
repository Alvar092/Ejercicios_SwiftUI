//
//  KeyChainKC.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 28/5/25.
//

import Security
import Foundation
import KeychainSwift

public struct KeyChainKC {
    public init(){
    }
    
    //funcion para Guardar
   
    @discardableResult
    public func saveKC(key: String, value: String) -> Bool{
        let keychain = KeychainSwift()
        
        if let data = value.data(using: .utf8){
            return keychain.set(data, forKey: key)
        } else {
            return false
        }
    }
    
    
    //Cargar clave
    public func loadKC(key: String) -> String?{
        if let data = KeychainSwift().get(key){
            return data
        } else{
            //No existe la clave
            return ""
        }
    }
    
    
    
    //eliminar
    @discardableResult
    public func deleteKC(key: String) -> Bool {
        return KeychainSwift().delete(key)
    }
    
    
    
}

