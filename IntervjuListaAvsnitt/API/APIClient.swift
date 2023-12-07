//
//  APIClient.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import Foundation
import Combine

struct APIClient {
    
    private static let urlSession: URLSession = .shared
    
    /*
        URLAR:
        Alla program: "https://api.sr.se/api/v2/programs?format=json&pagination=false"
        Ett program: "http://api.sr.se/api/v2/programs/(programId)?format=json"
     
        Implementera valfri method.
     */
    
    
    
    static func getAllPrograms() -> AnyPublisher<Result<[Program], Error>, Never> {
        fatalError()
    }
    
    static func getAllPrograms(completion: (Result<[Program], Error>) -> Void) {
        fatalError()
    }
    
    static func getAllPrograms() async throws -> [Program] {
        fatalError()
    }

}

extension Publisher {
    func mapToResult() -> AnyPublisher<Result<Output, Failure>, Never> {
        map(Result.success)
            .catch { Just(.failure($0)) }
            .eraseToAnyPublisher()
    }
}
