//
//  MovieDetailView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie : Movie
    
    var body: some View {
        VStack{
            TopImageSection(movie: movie)
            Spacer()
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man"))
    }
}
