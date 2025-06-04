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
    
    
    // DEpendences
    private var loginUserCase: LoginUseCaseProtocol
    
    init(loginUserCase: LoginUseCaseProtocol = LoginUseCase()) {
        self.loginUserCase = loginUserCase
        
        // Autologin
        Task{
            self.validateControlLogin()
        }
    }
    
    // Funciones
    @MainActor
    func loginApp(user: String, pass: String) {
        
        self.status = .loading
        
        Task {
            if (await loginUserCase.loginApp(user: user, password: pass)) {
                // Login OK
                self.status = .loaded // va a la home
            } else {
                // Login Error
                self.status = .error(error: "Error usuario/clave")
            }
        }
    }
    
    func closeSessionUser() {
        Task {
            await loginUserCase.logout()
            self.status = .none
        }
    }
    
    func validateControlLogin() {
        Task {
            if (await loginUserCase.validateToken()) {
                // Token correcto.... pa la home
                self.status = .loaded
            } else {
                self.status = .none // Se queda en el login 
            }
        }
    }
}
