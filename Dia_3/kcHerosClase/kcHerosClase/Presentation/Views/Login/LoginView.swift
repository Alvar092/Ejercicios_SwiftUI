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
                        .id(1) // for testing
                }
                .padding([.leading, .trailing], 20)
                
                
                
                Spacer()
                
            }
                
        } // ZStack
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
        .environment(\.locale, .init(identifier: "es"))
        .preferredColorScheme(.light)
}
