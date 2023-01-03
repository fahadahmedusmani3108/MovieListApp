//
//  MovieRepositoryTests.swift
//  MovieListAppTests
//
//  Created by Fahad Ahmed Usmani on 03/01/2023.
//

import XCTest
@testable import MovieListApp


final class MovieRepositoryTests: XCTestCase {
    
    var repository : MovieRepository!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        repository = MovieRepository.init(networkService: MovieNetworkService())
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        repository = nil
    }
    
    //This test will verify fileNotFound exception
    func testThrowExceptionIfFileNotFound() throws {
        
        XCTAssertThrowsError(try repository.readMoviesFromJsonFile(fileName: ""), "File not found error should be thrown"){ error in
            XCTAssertEqual(error as? Errors, .jsonFileNotFound)
        }
    }
    
    //This test will failed if JSON file parsing is failed
    func testCheckIfJsonFileIsValid() throws {
        XCTAssertNoThrow(try repository.readMoviesFromJsonFile(fileName: "MovieList"), "No exceptions should be thrown")
    }
    
    //This will test mock server api
    func testCheckIfMoviesAreFetchedFromMockServerAsync() async throws{
        let response = try await repository.fetchMoviesFromServer()
        XCTAssertNoThrow(response, "successfull response from server")
    }
    
    //This will validate that movies should be returned either from server or JSON file
    func testMoviesShouldFetchSuccessfullyFromServerOrFile() async throws{
        let movies = try await repository.getMovies()
        XCTAssertNoThrow(movies, "successfull response from server")
        XCTAssertTrue(movies?.count ?? 0 > 0)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
