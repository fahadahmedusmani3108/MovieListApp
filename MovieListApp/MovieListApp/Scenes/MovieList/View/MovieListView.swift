//
//  MovieListView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListView<vm: MovieListViewModelProtocol> : View {
    
    @StateObject private var viewModel : vm
    @State var refresh : Bool = false
    
    init(viewModel: vm) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationView {
            
            ZStack{
                VStack(alignment: .trailing, spacing: 0){
                    
                    ListView(movieList: viewModel.movieList, refresh: $refresh)
   
                    Spacer()
                }
                
                
                LoaderView()
                    .hidden($viewModel.isLoading.wrappedValue ? false : true)
            }
            .navigationTitle(AppStrings.movies)
            .toolbar {
                SortView(movieList: $viewModel.movieList)
            }
        }  .onAppear{
            viewModel.loadMovies()
        }
        .errorAlert(error: $viewModel.error)
        .onChange(of: refresh) { newValue in
            viewModel.loadMovies()
                    }
        
        
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(viewModel: MovieListViewModel(repository: MovieRepository.init(networkService: MovieNetworkService.init())))
    }
}
