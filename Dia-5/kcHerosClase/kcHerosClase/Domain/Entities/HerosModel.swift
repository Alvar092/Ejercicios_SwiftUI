//
//  HerosModel.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import Foundation

struct HerosModel : Codable, Identifiable, Sendable {
    var id: UUID
    var name: String
    var description: String
    var photo: String
    var favorite: Bool? //opcional. si el usuarios ha marcado como favorito
}


//Request
struct HerosModelRequest: Codable, Sendable{
    var name: String
}

//request Like Hero
struct HeroLikeRequest: Codable {
    var hero: String
}
