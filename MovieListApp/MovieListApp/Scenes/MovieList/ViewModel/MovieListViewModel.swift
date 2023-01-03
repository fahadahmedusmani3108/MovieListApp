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
    var error: Errors? { get set }
    func loadMovies()
}

class MovieListViewModel: MovieListViewModelProtocol{
    
    @Published var movieList : [Movie]
    @Published var isLoading : Bool
    @Published var error: Errors?
    
    var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
        self.isLoading = false
        self.movieList = []
    }
    
    //loading movies from repository
    @MainActor
    func loadMovies(){
        isLoading = true
        Task(){
            do{
                self.movieList = try await repository.getMovies() ?? []
                isLoading = false
            }
            catch(let exception){
                print(exception)
                isLoading = false
                error = exception as? Errors
            }
        }
    }
}
