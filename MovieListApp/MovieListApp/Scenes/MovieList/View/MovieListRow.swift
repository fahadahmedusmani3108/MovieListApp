//
//  MovieListRow.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListRow: View {
    
    @ObservedObject var movie : Movie
    
    var body: some View {
        
        HStack(spacing: 20) {
            
            Image(movie.imageName ?? "")
                .resizable()
                .frame(width: 90, height: 150)
            
            VStack(alignment: .leading, spacing: 10, content: {
                
                Text(movie.title ?? "")
                    .foregroundColor(Design.Colors.blackTitleColor)
                    .font(Design.Fonts.title)
 
                Text("\(movie.duration ?? ""), \(movie.genre ?? "")")
                    .font(Design.Fonts.body)
                    .foregroundColor(Design.Colors.grayTextColor)
                
                if movie.isAddedInWatchList ?? false{
                    Text(AppStrings.onMyWatchList)
                        .foregroundColor(Design.Colors.blackTitleColor)
                        .font(Design.Fonts.subtitle)
                        .padding(.top, 20)
                }
                
            })
            
            Spacer()
        }
        .frame(height: 150)
    }
}

struct MovieListRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieListRow(movie: Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"))
            .fixedSize()
    }
}
