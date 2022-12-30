//
//  ListView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 29/12/2022.
//

import SwiftUI

struct ListView: View {
    
    var movieList : [Movie]
    
    var body: some View {
        
        NavigationView {
            
            List(movieList, id: \.title) { movie in
                MovieListRow(movie: movie)
                    .listRowInsets(EdgeInsets.init(top: 10, leading: 0, bottom: 10, trailing: 0))
            }
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .listStyle(.plain)
            .navigationTitle("Movies")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(movieList: [Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"), Movie.init(title: "Tenet", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", imageName: "Tenet"), Movie.init(title: "Knives Out", duration: "1h-21 min", genre: "Action", imageName: "Knives Out"), Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man"),Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"), Movie.init(title: "Tenet", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", imageName: "Tenet"), Movie.init(title: "Knives Out", duration: "1h-21 min", genre: "Action", imageName: "Knives Out"), Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man")])
    }
}

