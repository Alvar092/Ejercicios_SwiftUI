//
//  File.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

public struct kcCornerRadiusMod: ViewModifier {
    let value: CGFloat
    
    public init(value: CGFloat) {
        self.value = value
    }
    
    public func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: value))
    }
    
}
