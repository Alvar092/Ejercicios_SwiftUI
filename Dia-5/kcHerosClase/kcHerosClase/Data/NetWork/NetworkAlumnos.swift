//
//  NetworkAlumnos.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 3/6/25.
//

import Foundation

protocol NetworkAlumnosProtocol{
    func getAlumnos()  async -> [AlumnosModel]
}
