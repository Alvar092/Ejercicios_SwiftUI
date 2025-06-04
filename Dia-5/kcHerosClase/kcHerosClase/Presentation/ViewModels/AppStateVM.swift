//
//  AppStateVM.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 28/5/25.
//

import Foundation

@Observable
final class AppStateVM {
    //Publicadas
    var status = Status.none //estado de la llamada de red al login
    var tokenJWT: String = "" //Token JWT del servidor
    
    // no publicadas
    @ObservationIgnored
    var isLogged: Bool = false //Indica si esta o no logado (interno)
    
    
    //Dependences
    private var loginUserCase: LoginUseCaseProtocol
    
    init(loginUserCase: LoginUseCaseProtocol = LoginUseCase()){
        self.loginUserCase = loginUserCase
        
        //Autologin
        Task{
            await self.validateControlLogin()
        }
        
    }
    
    
    //funciones
    @MainActor
    func loginApp(user: String, pass: String){
        self.status = .loading
        
        Task{
            if (await loginUserCase.loginApp(user: user, password: pass)){
                //Login OK
                self.status = .loaded //se va a la home
            } else{
                //login Error
                self.status = .error(error: "Error usuario / clave")
            }
        }
    }
    
    @MainActor
    func closeSessionUser(){
        Task{
            await loginUserCase.logout()
            self.status = .none
        }
    }
    
    @MainActor
    func validateControlLogin() {
        Task{
            if (await loginUserCase.validateToken()){
                //Token correcto... pa la home
                self.status = .loaded
            } else{
                self.status = .none //se queda en el login
            }
        }
    }
    
    
    
}
