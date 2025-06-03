//
//  HerosView.swift
//  kcHerosClase
//
//  Created by Álvaro Entrena Casas on 2/6/25.
//

import SwiftUI

struct HerosView: View {
    @Environment(AppStateVM.self) var appState
    @State var viewModel: HerosViewModel
    
    init(viewModel: HerosViewModel = HerosViewModel()) {
        self.viewModel = viewModel
        
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HerosView(viewModel: HerosViewModel(useCase: HerosUseCaseMock()))
        .environment(AppStateVM())
}
