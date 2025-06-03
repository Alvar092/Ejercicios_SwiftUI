//
//  kcPersistenceKeyChain.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

@propertyWrapper
class kcPersistenceKeyChain {
    private var key : String
    
    init(key: String) {
        self.key = key
    }
    
    var wrappedValue: String {
        get{
            if let value = KeyChainKC().loadKC(key: key){
                return value
            } else {
                return ""
            }
        }
        
        set{
            //me asignan un valor.
            KeyChainKC().saveKC(key: key, value: newValue)
        }
    }
    
}
