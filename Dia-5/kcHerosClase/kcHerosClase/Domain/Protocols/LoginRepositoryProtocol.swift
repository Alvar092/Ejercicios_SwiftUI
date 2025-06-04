//
//  LoginRepositoryProtocol.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//
import Foundation

protocol LoginRepositoryProtocol{
    func loginApp(user: String, password: String) async -> String //Devuelve el JWT
}
