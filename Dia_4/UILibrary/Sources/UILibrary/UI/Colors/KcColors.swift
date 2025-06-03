//
//  File.swift
//  UILibrary
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

public struct KCAppColors {
    private var colorScheme: ColorScheme = .light
    
    public init(colorScheme: ColorScheme = .light) {
        self.colorScheme = colorScheme
    }
    
    public var primaryColor: Color {
        switch colorScheme {
        case .light:
            return Color.orange
        case .dark:
            return Color.gray
        @unknown default:
            return Color.orange
        }
    }
    
    public var secundaryColor = Color.white
    public var textColor = Color.white
    
    
    // ---- text
    
    
    public var textBackColor: Color {
        switch colorScheme {
        case .light:
            return Color.white
        case .dark:
            return Color.red.opacity(0.6)
        @unknown default:
            return Color.white
        }
    }
    
    private var textForeColor: Color {
        return Color.orange
    }
    
    // ---- Button
    
    public var buttonActionText: Color {
        switch colorScheme {
        case .light:
            return Color.black
        case .dark:
            return Color.white
        @unknown default:
            return Color.black
        }
    }

        
        
    
    
}
