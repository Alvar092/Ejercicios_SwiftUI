//
//  HerosModel.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import Foundation

struct HerosModel: Codable, Identifiable, Sendable {
    var id: UUID
    var name: String
    var description: String
    var photo:  String
    var favorite: Bool?
}

struct HerosModelRequest: Codable, Sendable {
    var name: String
    
}
