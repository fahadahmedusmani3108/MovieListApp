//
//  MovieListViewModel.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 29/12/2022.
//

import SwiftUI

class MovieListViewModel: ObservableObject{
    
    @Published var movieList : [Movie] = []
    
    func loadMovies(){
        movieList = [Movie.init(title: "Avengers1", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "01/12/2022", imageName: "Avengers"), Movie.init(title: "Tenet2", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", releasedDate: "02/12/2022", imageName: "Tenet"), Movie.init(title: "Knives Out5", duration: "1h-21 min", genre: "Action", releasedDate: "05/12/2022", imageName: "Knives Out"), Movie.init(title: "Spider Man7", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "07/12/2022", imageName: "Spider Man"),Movie.init(title: "Avengers3", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "03/12/2022", imageName: "Avengers"), Movie.init(title: "Tenet4", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", releasedDate: "04/12/2022", imageName: "Tenet"), Movie.init(title: "Knives Out9", duration: "1h-21 min", genre: "Action", releasedDate: "9/12/2022", imageName: "Knives Out"), Movie.init(title: "Spider Man2", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "02/12/2022", imageName: "Spider Man1")]
    }
}
