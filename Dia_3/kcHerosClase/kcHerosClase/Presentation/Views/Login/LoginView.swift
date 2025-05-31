//
//  LoginView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 30/5/25.
//

import SwiftUI

struct LoginView: View {
#if DEBUG
    @State private var email = "entrenah92@gmail.com"
    @State private var password = "asdfgh"
    
#else
    @State private var email = ""
    @State private var password = ""
#endif
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        ZStack {
            Image(.backgroundLogin)
                .resizable()
            // Image negra
            Image(decorative: "")
                .resizable()
                .background(.black)
                .opacity(0.5)
            
            // Componentes del Login
            VStack{
                Image(.title)
                    .resizable()
                    .scaledToFit()
                    .opacity(0.7)
                    .padding(.top, 170)
                    
                VStack{
                    // Usuario
                    TextField("Email", text: $email)
                        .padding()
                        .background(.white)
                        .foregroundStyle(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .font(.headline)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .opacity(0.8)
                        .id(1) // for testing
                    
                    // Clave
                    SecureField("Password", text: $password)
                        .padding()
                        .background(.white)
                        .foregroundStyle(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .font(.headline)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .padding(.top, 20)
                        .opacity(0.8)
                        .id(2) // for testing
                }
                .padding([.leading, .trailing], 20)
                .padding(.top, 50)
                
                // Boton de login
                Button {
                    //TODO: Action login
                } label: {
                    Text("Entrar")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(width: 300, height: 50)
                        .background(Color(uiColor: UIColor(red: 221.0/255.0, green: 99.0/255.0, blue: 0.00, alpha: 1.0)))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .black, radius: 10.0, x: 20, y: 10)
                }
                .padding(.top, 50)
                .opacity(0.8)
                .id(3)
                .overlay(
                    Circle()
                        .stroke(.white)
                        .scaleEffect(animationAmount)
                    // .opacity(2 - animationAmount)
                        .padding(.top, 50)
                        .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: animationAmount)
                    
                )
                .onAppear {
                    animationAmount = 2
                }
                
                
                
                Spacer()
                
                // Boton de registro
                HStack {
                    Text("¿No tienes cuenta?")
                        .foregroundStyle(.white)
                        .bold()
                    Button {
                        // TODO : Registro
                    } label: {
                        Text("Registro")
                            .foregroundStyle(.blue)
                    }
                } // HStack 
                .padding(.bottom, 20)
            }
                
        } // ZStack
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
        .environment(\.locale, .init(identifier: "en"))
        .preferredColorScheme(.light)
}
