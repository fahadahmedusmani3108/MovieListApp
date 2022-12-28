//
//  MovieListView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListView: View {
    
        
    @State var movieList : [Movie] = [Movie.init(title: "Avengers1", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "01/12/2022", imageName: "Avengers"), Movie.init(title: "Tenet2", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", releasedDate: "02/12/2022", imageName: "Tenet"), Movie.init(title: "Knives Out5", duration: "1h-21 min", genre: "Action", releasedDate: "05/12/2022", imageName: "Knives Out"), Movie.init(title: "Spider Man7", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "07/12/2022", imageName: "Spider Man"),Movie.init(title: "Avengers3", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "03/12/2022", imageName: "Avengers"), Movie.init(title: "Tenet4", duration: "1h-21 min", genre: "Action, Revenge, Revenge, Revenge Action, Revenge, Revenge, Revenge", releasedDate: "04/12/2022", imageName: "Tenet"), Movie.init(title: "Knives Out9", duration: "1h-21 min", genre: "Action", releasedDate: "9/12/2022", imageName: "Knives Out"), Movie.init(title: "Spider Man2", duration: "1h-21 min", genre: "Action, Revenge", releasedDate: "02/12/2022", imageName: "Spider Man1")]
    
    
    
    var body: some View {
        
   
                
        VStack(alignment: .trailing, spacing: 0){
            
            SortView(movieList: $movieList)
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
