//
//  MovieListViewModelTests.swift
//  MovieListAppTests
//
//  Created by Fahad Ahmed Usmani on 03/01/2023.
//

import XCTest
@testable import MovieListApp

final class MovieListViewModelTests: XCTestCase {
    
    var modelListViewModel : MovieListViewModel!
    private var cancellables = Set<AnyCancellable>()

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        modelListViewModel = MovieListViewModel.init(repository: MovieRepository(networkService: MovieNetworkService.init()))
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        modelListViewModel = nil
        cancellables = []
    }
    
    //This will validate that movies are loaded successfully from repository
    @MainActor
    func testGetMovies(){
        
        //Given
        let expectation = XCTestExpectation(description: "movies loaded successfully")
        
        let _ = modelListViewModel.$movieList
            .dropFirst()
            .subscribe(on: DispatchQueue.global())
            .sink(receiveValue: { movies in
                XCTAssertTrue(movies.count > 0)
                expectation.fulfill()
            }).store(in: &cancellables)
        
        //When
        modelListViewModel.loadMovies()
        
        //Then
        wait(for: [expectation], timeout: 60)
        
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
