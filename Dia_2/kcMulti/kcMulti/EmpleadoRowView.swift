//
//  EmpleadoRowView.swift
//  kcMulti
//
//  Created by Álvaro Entrena Casas on 29/5/25.
//

import SwiftUI

struct EmpleadoRowView: View {
    let employee: Empleado
    var body: some View {
        VStack{
            //Foto
            Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100)
            // Nombre y apellidos
            
#if os(watchOS)
            //Codigo watchOS
            HStack{
                Spacer()
                Text(employee.nombre)
                Spacer()
            }
#else
            // Codigo iOS
            HStack{
                Spacer()
                Text(employee.nombre)
                Text(employee.apell1)
                if let apell2 = employee.apell2 {
                    Text(apell2)
                }
                Spacer()
            }
#endif
        } // VStack
        .padding()
        .background(.gray)
        
    }
}

#Preview {
    EmpleadoRowView(employee: Empleado(nombre: "Álvaro", apell1: "Entrena", apell2: "Casas", idPhoto: "photo", edad: 33))
}
