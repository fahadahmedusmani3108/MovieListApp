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
            guard let movies = try await networkService.getMovies()
            else{
                return try readMoviesFromJsonFile()
            }
            return movies
        }
        catch{
            return try readMoviesFromJsonFile()
        }
    }
    
    //parsing movies from json file
    private func readMoviesFromJsonFile() throws -> [Movie]?{
        if let data = readLocalFile(forName: "MovieList"){
            do {
                let movies = try JSONDecoder().decode([Movie].self, from: data)
                return movies
            }
            catch {
                throw NSError.init(domain: Error.invalidResponseFromServer.localizedDescription, code: 1)
            }
        }
        else{
            throw NSError.init(domain: Error.invalidResponseFromServer.localizedDescription, code: 1)
        }
    }
    
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
}
