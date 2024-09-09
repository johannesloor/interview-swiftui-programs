//
//  ContentView.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import SwiftUI
import Combine

struct AllProgramsScreen: View {
    
    @State private var viewModel = Self.ViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.programs) { program in
                NavigationLink {
                    detailView(program: program)
                } label: {
                    ProgramRow(
                        name: program.name,
                        description: program.description,
                        imageURL: program.programimage
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(8)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .navigationTitle("Alla SRs program")
        .task {
            await viewModel.load()
        }
    }
    
    @ViewBuilder
    private func detailView(program: Program) -> some View {
        VStack {
            RemoteImage(imageURL: program.programimage)
                .frame(height: 300)
            Text(program.description ?? "")
            Spacer()
        }
        .navigationTitle(program.name)
    }
}

#Preview {
    AllProgramsScreen()
}
