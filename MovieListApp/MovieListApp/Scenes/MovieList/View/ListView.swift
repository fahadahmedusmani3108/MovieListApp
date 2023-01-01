//
//  ListView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 29/12/2022.
//

import SwiftUI

struct ListView: View {
    
    var movieList : [Movie]
    @Binding var refresh : Bool
    
    var body: some View {
        
        List(movieList, id: \.title) { movie in
            
            NavigationLink( destination: MovieDetailView(movie: movie)) {
                
                MovieListRow(movie: movie)
                    .listRowSeparator(.hidden)
            }
            
        }
        .listStyle(.plain)
        .refreshable {
            refresh.toggle()
        }
    }
}
//
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView(movieList: [Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"), Movie.init(title: "Tenet", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", imageName: "Tenet"), Movie.init(title: "Knives Out", duration: "1h-21 min", genre: "Action", imageName: "Knives Out"), Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man"),Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"), Movie.init(title: "Tenet", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", imageName: "Tenet"), Movie.init(title: "Knives Out", duration: "1h-21 min", genre: "Action", imageName: "Knives Out"), Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man")], refresh: Binding(projectedValue: fa))
//    }
//}

