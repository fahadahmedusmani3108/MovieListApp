//
//  TopImageSection.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//

import SwiftUI

struct TopImageSection: View {
    
    @ObservedObject var movie : Movie
    
    var body: some View {
        
        HStack(spacing: 15){
            
            Image(movie.imageName ?? "")
                .resizable()
                .frame(width: 120, height: 220)
            
            VStack(spacing: 20){
                
                HStack(spacing: 0){
                    
                    Text(movie.title ?? "")
                        .fontWeight(.bold)
                        .font(.system(size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    Text("\(movie.rating ?? 0, specifier: "%.1f")")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    
                    
                    Text("/10")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.639, green: 0.643, blue: 0.643))
                        .lineLimit(1)
                    
                    
                }
                
                
                Button(action: {
                    
                    movie.isAddedInWatchList?.toggle()
                    movie.objectWillChange.send()
                    
                }) {
                    Text($movie.isAddedInWatchList.wrappedValue ?? false ? "REMOVE FROM WATCHLIST" : "+ ADD TO WATCHLIST")
                        .font(.system(size: 12))
                        .padding(10)
                        .foregroundColor(Color(red: 0.639, green: 0.643, blue: 0.643))
                        .fontWeight(.bold)
                        .background(Color(red: 0.875, green: 0.875, blue: 0.875))
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                }
                
                .lineLimit(1)
                
                
                Button(action: {
                    if let url = URL(string: movie.trailerLink ?? "") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("WATCH TRAILER")
                        .font(.system(size: 12))
                    
                        .padding(10)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                            
                        )
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
        }
        
    }
}

struct TopImageSection_Previews: PreviewProvider {
    
    static var previews: some View {
        TopImageSection(movie: Movie.init(title: "Avengers  .frame(maxWidth: .infinity, alignment: .leading)  .frame(maxWidth: .infinity, alignment: .leading)", rating: 8.7, duration: "1h-21 min", genre: "Action, Revenge", trailerLink: "​​https://www.youtube.com/watch?v=tmeOjFno6Do", imageName: "Avengers", isAddedInWatchList: false))
    }
}
