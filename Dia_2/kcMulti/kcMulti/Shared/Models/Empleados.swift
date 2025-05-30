//
//  Empleados.swift
//  kcMulti
//
//  Created by Álvaro Entrena Casas on 29/5/25.
//

import Foundation

struct Empleado: Identifiable {
    let id = UUID() // La PK es un empleado
    let nombre: String
    let apell1: String
    let apell2: String?
    let idPhoto: String
    let edad: Int
}

func getTestData() -> [Empleado] {
    return [
           Empleado( nombre: "David", apell1: "Martin", apell2: "Aguirre", idPhoto: "01", edad: 40),
           Empleado( nombre: "Lorena", apell1: "Franquite", apell2: nil, idPhoto: "01", edad: 61), //extrangero sin apellido 2
           Empleado( nombre: "Macarena", apell1: "Cabero", apell2: "Garcia", idPhoto: "01", edad: 55),
           Empleado( nombre: "Luis", apell1: "Bustos", apell2: "Esteban", idPhoto: "01", edad: 37),
           Empleado( nombre: "Juan", apell1: "Canus", apell2: "Llorens", idPhoto: "01", edad: 24),
           Empleado( nombre: "Diego", apell1: "Sanchez", apell2: "Martinex", idPhoto: "01", edad: 30),
           Empleado( nombre: "Lourdes", apell1: "Martin", apell2: "Escribano", idPhoto: "01", edad: 20)

        ]
}
