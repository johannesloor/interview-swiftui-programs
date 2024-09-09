//
//  IntervjuListaAvsnittTests.swift
//  IntervjuListaAvsnittTests
//

import XCTest
@testable import IntervjuListaAvsnitt

final class IntervjuListaAvsnittTests: XCTestCase {

    var apiClientMock: APIClient!
    override func setUpWithError() throws {
        apiClientMock = APIClientMock()
    }

    func testLoadPrograms() async throws {
        let allProgramsViewModel: AllProgramsScreen.ViewModel = .init(apiClient: apiClientMock)
        XCTAssertTrue(allProgramsViewModel.programs.isEmpty)
        await allProgramsViewModel.load()
        
        XCTAssertFalse(allProgramsViewModel.programs.isEmpty)
    }

}
