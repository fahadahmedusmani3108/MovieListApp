//
//  MovieListAppApp.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

@main
struct MovieListAppApp: App {
    var body: some Scene {
        WindowGroup {
            MovieListView(viewModel: MovieListViewModel(repository: MovieRepository.init(networkService: MovieNetworkService.init())))
        }
    }
}
