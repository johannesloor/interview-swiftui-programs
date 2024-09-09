//
//  APIClient.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import Foundation
import Combine

protocol APIClient {
    func getAllPrograms() async throws -> [Program]
}

struct APIClientImpl: APIClient {
    static let shared: APIClient = APIClientImpl()
    private let urlSession: URLSession = .shared
    
    func getAllPrograms() async throws -> [Program] {
        let (data, _) = try await urlSession.data(from: URL(string: "https://api.sr.se/api/v2/programs?format=json&pagination=false")!)
        let programResponse: ProgramsResponse = try JSONDecoder().decode(ProgramsResponse.self, from: data)
        return programResponse.programs
    }

}

struct APIClientMock: APIClient {
    
    func getAllPrograms() async throws -> [Program] {
        let programs: [Program] = [
            .init(id: 1, name: "Program1", description: .loremIpsum(30), programimage: URL(string: "https://static-cdn.sr.se/images/950/63f65890-c4ba-45dc-8039-5272ae4f07f0.jpg?preset=api-default-square")!),
            .init(id: 2, name: "Program2", description: .loremIpsum(10), programimage: URL(string: "https://static-cdn.sr.se/images/950/63f65890-c4ba-45dc-8039-5272ae4f07f0.jpg?preset=api-default-square")!),
            .init(id: 3, name: "Program3", description: .loremIpsum(90), programimage: URL(string: "https://static-cdn.sr.se/images/950/63f65890-c4ba-45dc-8039-5272ae4f07f0.jpg?preset=api-default-square")!),
            .init(id: 4, name: "Program4", description: .loremIpsum(2), programimage: URL(string: "https://static-cdn.sr.se/images/950/63f65890-c4ba-45dc-8039-5272ae4f07f0.jpg?preset=api-default-square")!),
        ]
        return programs
    }
}
