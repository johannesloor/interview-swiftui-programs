//
//  APIClient.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import Foundation
import Combine

struct APIClient {
    
    private let urlSession: URLSession = .shared
    
    /*
        URLAR:
        Alla program: "https://api.sr.se/api/v2/programs?format=json&pagination=false"
        Ett program: "http://api.sr.se/api/v2/programs/(programId)?format=json"
     */
    
    
    
    static func getAllPrograms() -> AnyPublisher<Result<[Program], Error>, Never> {
        fatalError()
    }
    
    static func getAllPrograms(completion: (Result<[Program], Error>) -> Void) {
        fatalError()
    }
    
    static func getAllPrograms() async -> Result<[Program], Error> {
        fatalError()
    }
    
//    static func getAllPrograms() -> AnyPublisher<Result<[Program], Error>, Never> {
//        let programsResponse: AnyPublisher<Result<ProgramsResponse, Error>, Never> = Self.fireRequest(url: allProgramsURL)
//        return programsResponse.map { result in
//            return result.map(\.programs)
//        }
//        .eraseToAnyPublisher()
//    }
//    
//    private static func fireRequest<Response: Decodable>(url: URL) -> AnyPublisher<Result<Response, Error>, Never> {
//        let urlRequest: URLRequest = URLRequest(url: allProgramsURL)
//        return URLSession.shared.dataTaskPublisher(for: urlRequest)
//            .tryMap {
//                if let httpResponse = $0.response as? HTTPURLResponse {
//                    switch httpResponse.statusCode {
//                    case 400...499:
//                        throw APIClientError.clientNetworkError
//                    case 500...:
//                        throw APIClientError.serverError
//                    default:
//                        break
//                    }
//                }
//                guard $0.data.count > 0 else { throw URLError(.zeroByteResource) }
//                return $0.data
//            }
//            .decode(type: Response.self, decoder: JSONDecoder())
//            .mapToResult()
//            .eraseToAnyPublisher()
//    }
    
}

extension Publisher {
    func mapToResult() -> AnyPublisher<Result<Output, Failure>, Never> {
        map(Result.success)
            .catch { Just(.failure($0)) }
            .eraseToAnyPublisher()
    }
}
