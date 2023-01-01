//
//  MovieListViewModel.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 29/12/2022.
//

import Combine
import SwiftUI

protocol MovieListViewModelProtocol : ObservableObject{
    var movieList: [Movie] { get set }
    var isLoading: Bool { get set }
    var error: Error? { get set }
    func loadMovies()
}

class MovieListViewModel: MovieListViewModelProtocol{
    
    @Published var movieList : [Movie] = []
    @Published var isLoading : Bool = false
    @Published var error: Error?
    
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    @MainActor
    func loadMovies(){
        isLoading = true
        Task(){
            
            do{
                self.movieList = try await repository.getMovies() ?? []
                print(movieList)
                isLoading = false
            }
            catch(let exception){
                print(exception)
                isLoading = false
                error = Error.invalidResponseFromServer
            }
            
        }
    }
}
