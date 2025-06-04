//
//  HerosView.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 2/6/25.
//

import SwiftUI

struct HerosView: View {
    @Environment(AppStateVM.self) var appState
    @State var viewModel: HerosViewModel
    
    //SOlo para la transicion al detalle
    @Namespace
    private var nameSpace
    
    
    init(viewModel: HerosViewModel = HerosViewModel()){
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.herosData){hero in
                    NavigationLink {
                        //Destinatioon
                        HerosDetailView(hero: hero, vmHeros: viewModel)
                            .navigationTransition(.zoom(sourceID: hero.id, in: nameSpace))
                    } label: {
                        //Row del heroe
                        HeroesRowView(hero: hero)
                    }

                }
            } //List
            .navigationTitle("Heroes")
            .searchable(text: $viewModel.filterUI, prompt: "Buscar heroes por nombre")
            .onChange(of: viewModel.filterUI) { oldValue, newValue in
                if !newValue.isEmpty{
                    //no esta vacio
                    if newValue.count > 2 {
                        Task{
                            await viewModel.getHeros(newSearch: newValue)
                        }
                    }
                    
                } else {
                    //esta vacio el filtro. Cargamos todos
                    Task{
                        await viewModel.getHeros(newSearch: "")
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //Action here
                        appState.closeSessionUser()
                    } label: {
                        Label("Close", systemImage: "xmark.circle")
                    }

                }
            }
        }//navigation
    }
}

#Preview {
    HerosView(viewModel: HerosViewModel(useCase: HerosUseCaseMock()))
        .environment(AppStateVM())
}
