//
//  File.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

extension View {
    public func kcCornerRadius(value: CGFloat) -> some View {
        modifier(kcCornerRadiusMod(value: value))
    }
}
