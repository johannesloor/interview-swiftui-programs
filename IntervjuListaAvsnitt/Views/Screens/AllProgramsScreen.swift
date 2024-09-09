//
//  ContentView.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import SwiftUI
import Combine

struct AllProgramsScreen: View {
    
    @State private var programs: [Program] = []
    
    var body: some View {
            NavigationView {
                List(programs) { program in
                    ProgramRow(
                        name: program.name,
                        description: program.description,
                        imageURL: program.programimage
                    )
                }
                .navigationTitle("Alla Program")
                .onAppear {
                    load()
                }
            }
        }
    
    private func load() {
        APIClient.getAllPrograms { res in
            switch res {
            case .success(let programs):
                self.programs = programs
            case .failure(let err):
                print(err)
            }
        }
    }
    
}

#Preview {
    AllProgramsScreen()
}
