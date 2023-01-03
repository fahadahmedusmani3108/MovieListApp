//
//  MovieNetworkService.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 03/01/2023.
//

import Foundation

protocol MovieNetworkServiceProtocol{
    func getMovies() async throws -> [Movie]?
}

class MovieNetworkService: MovieNetworkServiceProtocol{
    
    func getMovies() async throws -> [Movie]? {
        do{
            return try await APIClient.performRequest(route: MovieRouter.getMovieList)
        }
        catch(let exception){
            throw exception
        }
    }
    
}
