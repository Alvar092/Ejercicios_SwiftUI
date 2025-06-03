//
//  kcTextField.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

public struct kcTextField: View {
    @Environment(\.colorScheme) var colorScheme
    
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
        TextField(placeHolder, text: text)
            .keyboardType(keyboardType)
            .onSubmit(onSubmit)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .opacity(0.8)
            .shadow(radius: 10.0, x: 20, y: 10)
        
    }
}



// Preview 
#if DEBUG
struct ContentView_kcTextField: View {
    @State var user: String = "Hola"
    
    var body: some View {
        kcTextField(text: $user, placeHolder: "Nombre de user", keyboardType: .default) {
            // Closure de submit (cuando le dan a aceptar)
        }
        
    }
}

#Preview {
    ContentView_kcTextField()
}

#endif
