//
//  LoginView.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 28/5/25.
//

import SwiftUI

struct LoginView: View {
    @Environment(AppStateVM.self) var appState
    
    
#if DEBUG
    @State private var email = "bejl@keepcoding.es"
    @State private var password = "123456"
#else
    @State private var email = ""
    @State private var password = ""
#endif
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        ZStack{
            //Imagen de fondo
            Image(.backgroundLogin)
                .resizable()
            //Image negra
            Image(decorative: "")
                .resizable()
                .background(.black)
                .opacity(0.5)
            
            //Componnetes del login
            VStack{
                Image(.title)
                    .resizable()
                    .scaledToFit()
                    .opacity(0.7)
                    .padding(.top, 170)
                
                //usuario y clave
                VStack{
                    //usuario
                    TextField("Email", text: $email)
                        .padding()
                        .background(.white)
                        .foregroundStyle(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .font(.headline)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .opacity(0.8)
                        .id(1) //for testing
                    
                    //Clave
                    SecureField("Clave", text: $password)
                        .padding()
                        .background(.white)
                        .foregroundStyle(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .font(.headline)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .padding(.top, 20)
                        .opacity(0.8)
                        .id(2) //for testing
               }
                .padding([.leading, .trailing], 30)
                .padding(.top, 50)
                
                
                //boton de Login
                Button {
                    appState.loginApp(user: email, pass: password)
                    
                    //NSLocalizedString("LOGIN_BUTTON", comment: "Entrar22")
                } label: {
                    Text("Entrar")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(width: 300, height: 50)
                        .background(Color(uiColor: UIColor(red: 221.0/255.0, green: 99.00/255.0, blue: 0.00, alpha: 1.0)))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10.0, x:30, y:10)
                    
                }
                .padding(.top, 50)
                .opacity(0.8)
                .id(3)
                .overlay(
                    Circle()
                        .stroke(.white)
                        .scaleEffect(animationAmount)
                        //.opacity(2-animationAmount)
                        .padding(.top, 50)
                        .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: animationAmount)
                    
                )
                .onAppear{
                    animationAmount = 2
                }
                
                Spacer()
                
                //Boton de Registro
                HStack{
                    Text("¿No tienes cuenta?")
                        .foregroundStyle(.white)
                        .bold()
                    Button {
                        //TODO: Registro
                    } label: {
                        Text("Registro")
                            .foregroundStyle(.blue)
                    }
                }
                .padding(.bottom, 20)
            }
        
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
        .environment(\.locale, .init(identifier: "en"))
        .preferredColorScheme(.light)
        .environment(AppStateVM())
}
