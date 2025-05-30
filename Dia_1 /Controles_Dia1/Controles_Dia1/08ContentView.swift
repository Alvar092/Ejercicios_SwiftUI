//
//  08ContentView.swift
//  Controles_Dia1
//
//  Created by Álvaro Entrena Casas on 28/5/25.
//

import SwiftUI

struct _8ContentView: View {
    
    @State var bestFriends = ["Santi", "Ana", "Luis"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(bestFriends, id: \.self) { data in
                    Text(data)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true, content: {
                            // Botones aqui
                            Button {
                                // Action
                                
                            } label: {
                                Label("Video", systemImage: "video.fill")
                            }
                            .tint(.red)
                            
                            Button {
                                // Action
                                
                            } label: {
                                Label("Silenciar", systemImage: "bell.fill")
                            }
                            .tint(.blue)
                        })
                }
            } // List
            .navigationTitle("Amigos")
            .navigationBarTitleDisplayMode(.automatic)
        } // Navigation
        .refreshable {
            // pull to refresh
            bestFriends.append("Álvaro")
        }
    }
}

#Preview {
    _8ContentView()
}
