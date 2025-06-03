//
//  kcSecureField.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

//
//  kcTextField.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

public struct kcSecureField: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var show = false
    
    let text: Binding<String>
    let placeHolder: String
    let keyboardType: UIKeyboardType
    let onSubmit: () -> Void
    
    public init(text: Binding<String>, placeHolder: String, keyboardType: UIKeyboardType, onSubmit: @escaping () -> Void) {
        self.text = text
        self.placeHolder = placeHolder
        self.keyboardType = keyboardType
        self.onSubmit = onSubmit
    }
    
    
    public var body: some View {
        
        ZStack{
            if (!show) {
                SecureField(placeHolder, text: text)
                    .keyboardType(keyboardType)
                    .onSubmit(onSubmit)
                    .padding()
                    .background(KCAppColors(colorScheme: colorScheme).primaryColor)
                    .foregroundStyle(KCAppColors(colorScheme: colorScheme).textColor)
                    .kcCornerRadius(value: 20.0)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .opacity(0.8)
                    .shadow(radius: 10.0, x: 20, y: 10)
            } else {
                SecureField(placeHolder, text: text)
                    .keyboardType(keyboardType)
                    .onSubmit(onSubmit)
                    .padding()
                    .background(KCAppColors(colorScheme: colorScheme).primaryColor)
                    .foregroundStyle(KCAppColors(colorScheme: colorScheme).textColor)
                    .kcCornerRadius(value: 20.0)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .opacity(0.8)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }// if
    
    HStack{
        Spacer()
        Button{
            // Action
            show.toggle()
            
            // 2 segundos ocultar
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                self.show = false
            }
        } label: {
            // Label
            Image(systemName: "eye")
        }
        .foregroundStyle(show ? .gray: .blue)
        .offset(x: ,y: )
    }

}



// Preview
#if DEBUG
struct ContentView_kcSecureField: View {
    @State var user: String = "Hola"
    
    var body: some View {
        kcSecureField(text: $user, placeHolder: "Nombre de user", keyboardType: .default) {
            // Closure de submit (cuando le dan a aceptar)
        }
        
    }
}

#Preview {
    ContentView_kcSecureField()
}

#endif
