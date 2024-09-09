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
        Alla program: "https://api.sr.se/api/v2/programs?format=json&pagination=false"
        Implementera valfri method.
     */
    private static let url = URL(string: "https://api.sr.se/api/v2/programs?format=json&pagination=false")!

    
    
    
    static func getAllPrograms() -> AnyPublisher<Result<[Program], Error>, Never> {
        fatalError()
    }
    
    static func getAllPrograms(completion: @escaping (Result<[Program], Error>) -> Void) {
        let task = urlSession.dataTask(with: url) { data, response, error in
                    if let error = error {
                        completion(.failure(error))
                        return
                    }
                    
                    guard let data = data else {
                        completion(.failure(NSError(domain: "APIClientError", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                        return
                    }
                    
                    do {
                        let decodedResponse = try JSONDecoder().decode(ProgramsResponse.self, from: data)
                        completion(.success(decodedResponse.programs))
                    } catch let parsingError {
                        completion(.failure(parsingError))
                    }
                }
                task.resume()
    }
    
    static func getAllPrograms() async throws -> [Program] {
        fatalError()
    }

}
