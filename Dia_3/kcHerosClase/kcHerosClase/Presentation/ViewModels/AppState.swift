//
//  AppState.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 31/5/25.
//


/// RECORDEMOS QUE ESTO ES UN VIEWMODEL
///
import Foundation

final class AppState: Observable {
    // Propiedades publicadas
    var status = Status.none
    var tokenJWT: String = "" // TOken del server
    
    //Propiedades no publicadas
    @ObservationIgnored
    var isLogged: Bool = false // Indica si esta loggeado
    
}
