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
                .padding(.top, 10)
                .padding(.bottom, 10)
            
            Color.gray.frame(height: 1 / UIScreen.main.scale)
            
            DescriptionSection(movie: movie)
                .padding(.top, 10)
                .padding(.bottom, 10)
            
            Color.gray.frame(height: 1 / UIScreen.main.scale)
            
            DetailSection(movie: movie)
                .padding(.top, 10)
                .padding(.bottom, 10)
            
            Color.gray.frame(height: 1 / UIScreen.main.scale)
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.init(title: "Avengers", description: "Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.", rating: 8.7, duration: "1h-21 min", genre: "Action, Revenge", trailerLink: "​​https://www.youtube.com/watch?v=tmeOjFno6Do", imageName: "Avengers", isAddedInWatchList: false))
    }
}
