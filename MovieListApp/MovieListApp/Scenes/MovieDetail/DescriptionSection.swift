//
//  DescriptionSection.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//

import SwiftUI

struct DescriptionSection: View {
   
    var movie : Movie
    
    var body: some View {
        
        VStack(spacing: 20){
            Text("Short Description")
                .font(Design.Fonts.title)
                .foregroundColor(Design.Colors.blackTitleColor)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            
            Text(movie.description ?? "")
                .font(Design.Fonts.body)
                .foregroundColor(Design.Colors.grayTextColor)
                .padding(0)
            }
    }
}

struct DescriptionSection_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionSection(movie: Movie.init(title: "Avengers", description: "Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.", rating: 8.7, duration: "1h-21 min", genre: "Action, Revenge", trailerLink: "​​https://www.youtube.com/watch?v=tmeOjFno6Do", imageName: "Avengers", isAddedInWatchList: false))
    }
}
