//
//  ContentView.swift
//  kcMulti
//
//  Created by Álvaro Entrena Casas on 29/5/25.
//

import SwiftUI

struct ContentView: View {
    
    private var Employees = getTestData()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Employees) { employee in
                    NavigationLink{
                        // Destino
                        EmployeeDetailView(employee: employee)
                        
                    } label:{
                        EmpleadoRowView(employee: employee)
                    }
                }
            }
            .navigationTitle("Empleados")
        }// Navigation
    }
}

#Preview {
    ContentView()
}
