//
//  PersistenceKeychain.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import Foundation

@propertyWrapper
class PersistenceKeychain {
    private var key: String
    
    init(key: String) {
        self.key = key
    }
    
    var wrappedValue: String {
        get {
            // Me piden valor
            if let value = KeyChainKC().loadKC(key: key) {
                return value
            } else {
                return ""
            }
        }
        set {
            // Me asignan valor
            KeyChainKC().saveKC(key: key, value: newValue)
        }
    }
}
