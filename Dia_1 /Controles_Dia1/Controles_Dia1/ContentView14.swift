//
//  ContentView14.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI
import Charts // Framework de iOS 16


struct Values: Identifiable {
    let id = UUID()
    let title: String
    let value: Int
    let color: Color
}

struct ContentView14: View {
    // Nos creamos unos datos mockeados
    var vals: [Values] = [
        Values(title: "Goku", value: 100, color: .red),
        Values(title: "Krilin", value: 40, color: .blue),
        Values(title: "Freezer", value: 95, color: .orange),
        Values(title: "Vegeta", value: 75, color: .purple)
    ]
    
    var body: some View {
        VStack {
            Text("Unidades de energía")
            
            // Barras
                        Chart{
                            ForEach(vals) { data in
                                BarMark(x: .value("", data.title),
                                        y: .value("", data.value))
                                .foregroundStyle(data.color)
                            }
                        }
            // Puntos
            Chart{
                ForEach(vals) { data in
                    PointMark(x: .value("", data.title),
                              y: .value("", data.value))
                    .foregroundStyle(data.color)
                }
            }
            // Area
            Chart{
                ForEach(vals) { data in
                    AreaMark(x: .value("", data.title),
                             y: .value("", data.value))
                    .foregroundStyle(data.color)
                }
            }
            // Rectangulos
            Chart{
                ForEach(vals) { data in
                    RectangleMark(x: .value("", data.title),
                             y: .value("", data.value))
                    .foregroundStyle(data.color)
                }
            }
        }
    }
}

#Preview {
    ContentView14()
}
