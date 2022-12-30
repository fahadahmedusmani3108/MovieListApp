//
//  MovieListRow.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListRow: View {
    
    var movie : Movie
    
    var body: some View {
      
        HStack(spacing: 20) {
            
            Image(movie.imageName ?? "")
                .resizable()
                .frame(width: 90, height: 150)

                VStack(alignment: .leading, spacing: 10, content: {
                    Text(movie.title ?? "")
                        .font(Font.title2)
                        .bold()
                    
                    Text("\(movie.duration ?? ""), \(movie.genre ?? "")")
                        .font(Font.subheadline)
                        .foregroundColor(Color.gray)
                    
                    
                    Text("ON MY WATCHLIST")
                        .font(Font.subheadline)
                        .padding(.top, 20)
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
