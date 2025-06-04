//
//  HerosModel.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import Foundation

struct HerosModel: Codable, Identifiable, Sendable {
    var id: UUID
    var name: String
    var description: String
    var photo: String
    var favorite: Bool? // Opcional, si el user marca fav
}

// Request

struct HerosModelRequest: Codable, Sendable {
    var name: String
}
