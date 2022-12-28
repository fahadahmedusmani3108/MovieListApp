//
//  MovieListView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListView: View {
    
    @ObservedObject var viewModel : MovieListViewModel
    
    var body: some View {
        
        
        
        VStack(alignment: .trailing, spacing: 0){
            
            SortView(movieList: $viewModel.movieList)
            .padding(.trailing, 20)
            
            ListView(movieList: viewModel.movieList)
                .onAppear{
                    viewModel.loadMovies()
                }
            
            Spacer()
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(viewModel: MovieListViewModel())
    }
}
