//
//  AllProgramsViewModel.swift
//  IntervjuListaAvsnitt
//
//

import Foundation

extension AllProgramsScreen {
    
    @Observable
    final class ViewModel {
        var programs: [Program] = []
        private let apiClient: APIClient
        
        init(apiClient: APIClient = APIClientImpl.shared) {
            self.apiClient = apiClient
        }
        
        func load() async {
            do {
                programs = try await apiClient.getAllPrograms()
                programs.sort(by: { $0.name < $1.name} )
            } catch {
                assertionFailure()
            }
        }
    }
}
