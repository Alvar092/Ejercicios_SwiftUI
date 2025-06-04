//
//  LoginTip.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 3/6/25.
//
import TipKit

struct LoginTip: Tip {
    var title: Text {
        Text("Acceso a la App")
    }
    
    var message: Text? {
        Text("Rellene el usuario con la cuenta de mail que se registró")
    }
    
    var image: Image?{
        Image(systemName: "questionmark.circle.fill")
    }
    
    var options: [Option]{
        //nuemero de veces a mostrar el tip
        Tips.MaxDisplayCount(200)
    }
    
    
    //Acciones
    var actions: [Action] {
        Action(id: "reset-password", title: "Cambiar clave")
        Action(id: "help", title: "Ayuda al acceso")
    }
    
    
}
