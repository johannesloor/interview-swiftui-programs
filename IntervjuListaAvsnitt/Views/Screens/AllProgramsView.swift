//
//  ContentView.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import SwiftUI
import Combine

struct AllProgramsView: View {
    
    @State private var programs: [Program] = []
    
    var body: some View {
        ProgramRow(
            name: "Program",
            description: .loremIpsum(15),
            imageURL: nil
        )
    }
    
    private func load() {
        
    }
    
}

#Preview {
    AllProgramsView()
}
