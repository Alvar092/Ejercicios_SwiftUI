//
//  File.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

public struct KcButton <Content: View> : View {

    @Environment(\.colorScheme) var colorScheme
    
    let content: Content
    let action: () -> Void
    let cornerRadius: CGFloat
    let padding: CGFloat
    
    public init(
        @ViewBuilder content: @escaping () -> Content,
        action: @escaping () -> Void,
        cornerRadius: CGFloat = 30.0,
        padding: CGFloat = 10
    
    ){
        self.content = content()
        self.action = action
        self.cornerRadius = cornerRadius
        self.padding = padding
    }
    
    public var body: some View {
        Button(action: self.action) {
            content
                .padding(self.padding)
                .background(KCAppColors(colorScheme: colorScheme).primaryColor)
                .foregroundStyle(KCAppColors(colorScheme: colorScheme).textColor)
                .kcCornerRadius(value: cornerRadius)
        }
    }
}

// Lo que hariamos en la app

#if DEBUG
struct ContentView_kcButton: View {
    var body: some View {
        KcButton(content: {
            // Content
            Text("Hola mundo")
        }, action: {
            // Action
            
        }, cornerRadius: 20)
    }
}

#Preview {
    ContentView_kcButton()
}

#endif
