//
//  MovieListRow.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct MovieListRow: View {
    
    var body: some View {
      
        HStack(spacing: 20) {
            
            Image("Avengers")
                .resizable()
                .frame(width: 80, height: 120)
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Avengers: Age of ultron (2015)")
                    .font(Font.headline)
                    .bold()
                
                Text("2h-21min - Sci-fi,Action, Adventure")
                    .font(Font.subheadline)
                    .foregroundColor(Color.gray)
                
            })
            Spacer()
        }
        .padding(.leading, 20)
    }
    
}

struct MovieListRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieListRow()
    }
}
