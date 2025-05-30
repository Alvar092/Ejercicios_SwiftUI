//
//  EmployeeDetailView.swift
//  kcMulti
//
//  Created by Álvaro Entrena Casas on 29/5/25.
//

import SwiftUI

struct EmployeeDetailView: View {
    
    let employee: Empleado
    
    var body: some View {
        VStack{
            Image(systemName: "person")
                .resizable()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 100, idealHeight: 200, maxHeight: 300)
            
            VStack{
                Text(employee.nombre)
                    .padding()
                Text(employee.apell1)
                    .padding()
                if let apell2 = employee.apell2 {
                    Text(apell2)
                        .padding()
                }
            } //Vstack 2
            .foregroundStyle(.white )
        } // VStack 1
        .background(.gray)
    }
}

#Preview {
    EmployeeDetailView(employee: Empleado(nombre: "Álvaro", apell1: "Entrena", apell2: "Casas", idPhoto: "photo", edad: 33))
}
