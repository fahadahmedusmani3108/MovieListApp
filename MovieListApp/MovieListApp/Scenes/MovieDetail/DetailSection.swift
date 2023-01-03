//
//  DetailSection.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//

import SwiftUI

struct DetailSection: View {
    
    var movie : Movie
    
    var body: some View {
        
        VStack(spacing: 25){
            Text(AppStrings.details)
                .font(Design.Fonts.title)
                .foregroundColor(Design.Colors.blackTitleColor)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(spacing: 10){
                
                HStack(spacing: 20){
                    Text(AppStrings.genre)
                        .font(Design.Fonts.body)
                        .foregroundColor(Design.Colors.blackTitleColor)
                        .frame(maxWidth: 105, alignment: .trailing)
                    
                    
                    Text(movie.genre ?? "")
                        .font(Design.Fonts.body)
                        .foregroundColor(Design.Colors.grayTextColor)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                }
                
                
                HStack(spacing: 20){
                    Text(AppStrings.releaseDate)
                        .font(Design.Fonts.body)
                        .foregroundColor(Design.Colors.blackTitleColor)
                    
                    Text(movie.releasedDate ?? "")
                        .font(Design.Fonts.body)
                        .foregroundColor(Design.Colors.grayTextColor)
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
            }
            Spacer()
        }
    }
}

struct DetailSection_Previews: PreviewProvider {
    static var previews: some View {
        DetailSection(movie: Movie.init(title: "Avengers", description: "Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.", rating: 8.7, duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "1 May 2015", trailerLink: "​​https://www.youtube.com/watch?v=tmeOjFno6Do", imageName: "Avengers", isAddedInWatchList: false))
    }
}
