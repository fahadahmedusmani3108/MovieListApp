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
    
    //try fetching movies from mock server first, If it fails then read from json file
    func getMovies() async throws -> [Movie]? {
        do{
            guard let movies = try await fetchMoviesFromServer()
            else{
                return try readMoviesFromJsonFile(fileName: "MovieList")
            }
            return movies
        }
        catch{
            return try readMoviesFromJsonFile(fileName: "MovieList")
        }
    }
    
    //fetching from server
    func fetchMoviesFromServer() async throws -> [Movie]?{
        return try await networkService.getMovies()
    }
    
    //loading movies from json file
    func readMoviesFromJsonFile(fileName: String) throws -> [Movie]?{
        do {
            let data = try readLocalFile(forName: fileName)

            do{
                let movies = try JSONDecoder().decode([Movie].self, from: data)
                return movies
            }catch{
                throw Errors.invalidJsonFile
            }
        }
        
        catch(let exception) {
            throw exception
        }
    }
    
    private func readLocalFile(forName name: String) throws -> Data {
        
        guard !name.isEmpty, let bundlePath = Bundle.main.path(forResource: name,
                                                ofType: "json") else{
            throw Errors.jsonFileNotFound
        }
        
        do {
            if let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8){
                return jsonData
            }
        }
        throw Errors.invalidJsonFile
    }
    
    
}



