//
//  HerosView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 3/6/25.
//

import SwiftUI

struct HerosView: View {
    @Environment(AppState.self) var appState
    @State var viewModel: HerosViewModel
    
    // Filtrar por heros
    @State private var filter: String = ""
    
    init(viewModel: HerosViewModel = HerosViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.herosData){hero in
                    NavigationLink {
                        //Destination
                        Text("destino")
                    } label: {
                        // Row del heroe
                        HerosRowView(hero: hero)
                    }
                }
            }// List
            .navigationTitle("Heroes")
            .searchable(text: $viewModel.filterUI , prompt: "Buscar heroes por nombre ")
            .onChange(of: viewModel.filterUI) { oldValue, newValue in
                if !newValue.isEmpty {
                    // no esta vacio
                    if newValue.count > 2 {
                        Task {
                            await viewModel.getHeros(newSearch: newValue)
                        }
                    }
                } else {
                    // Esta vacio el filtro, asi que mostramos todos
                    Task {
                        await viewModel.getHeros(newSearch: "")
                    }
                }
            }
        } // Navigation
    }
}

#Preview {
    HerosView(viewModel: HerosViewModel(useCase: HerosUseCaseMock()))
        .environment(AppState())
}
