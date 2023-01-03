//
//  MovieRepository.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 29/12/2022.
//

import Foundation

protocol MovieRepositoryProtocol{
    func getMovies() async throws -> [Movie]?
}

class MovieRepository : MovieRepositoryProtocol{
    
    var networkService : MovieNetworkServiceProtocol
    
    init(networkService: MovieNetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func getMovies() async throws -> [Movie]? {
        
        guard let movies = try await networkService.getMovies()
        else{
            throw NSError.init(domain: Error.invalidResponseFromServer.localizedDescription, code: 1)
        }
        return movies
    }
    
}
