//
//  MovieListView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListView: View {
        
    var movieList : [Movie] = [Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"), Movie.init(title: "Tenet", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", imageName: "Tenet"), Movie.init(title: "Knives Out", duration: "1h-21 min", genre: "Action", imageName: "Knives Out"), Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man"),Movie.init(title: "Avengers", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Avengers"), Movie.init(title: "Tenet", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", imageName: "Tenet"), Movie.init(title: "Knives Out", duration: "1h-21 min", genre: "Action", imageName: "Knives Out"), Movie.init(title: "Spider Man", duration: "1h-21 min", genre: "Action, Revenge", imageName: "Spider Man")]
    
    var body: some View {
        
   
                
        VStack(alignment: .trailing, spacing: 0){
            
            SortView()
            .padding(.trailing, 20)
            
            ListView(movieList: movieList)

            Spacer()
        }
        
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
