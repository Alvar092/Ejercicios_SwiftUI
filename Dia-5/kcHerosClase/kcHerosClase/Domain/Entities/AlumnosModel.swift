//
//  AlumnosModel.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 3/6/25.
//
import Foundation

struct AlumnosModel: Codable, Identifiable{
    let id: String
    let email: String
    let apell1, apell2 : String
    let name: String
    let photo: String?
    let bootcamp: BootcampModel //bootcamp de un alumno
    let heros : [HerosModel] //heroes favoritos de un alumno
    
}

//Lista de bootcamps
struct BootcampModel: Codable, Identifiable{
    let id, name: String
}
