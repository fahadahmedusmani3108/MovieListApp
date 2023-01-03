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

