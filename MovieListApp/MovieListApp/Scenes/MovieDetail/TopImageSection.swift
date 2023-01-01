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
                .frame(width: 120, height: 180)
                .padding(.leading, 20)
            
            VStack(spacing: 30){
               
                HStack(spacing: 0){
                   
                    Text(movie.title ?? "")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    
                    Spacer()
                    Text("\(movie.rating ?? 0, specifier: "%.1f")")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Text("/10")
                        .font(.system(size: 15))
                }
                
                Button(action: {
                    
                    movie.isAddedInWatchList?.toggle()
                    movie.objectWillChange.send()
                    
                }) {
                    Text($movie.isAddedInWatchList.wrappedValue ?? false ? "REMOVE FROM WATCHLIST" : "+ ADD TO WATCHLIST")
                        .font(.system(size: 12))
                        .padding(5)
                        .foregroundColor(.gray)
                }
                .buttonStyle(.bordered)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)

                
                Button(action: {
                    if let url = URL(string: movie.trailerLink ?? "") {
                           UIApplication.shared.open(url)
                        }
                }) {
                    Text("WATCH TRAILER")
                        .font(.system(size: 12))
                        
                        .padding(12)
                        .foregroundColor(.black)
                       
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1)
                )
                .frame(maxWidth: .infinity, alignment: .leading)

                
            }
            Spacer()
        }
        
    }
}
//
//struct TopImageSection_Previews: PreviewProvider {
//
//    static var previews: some View {
//        TopImageSection(movie: Movie.init(title: "Avengers", rating: 8.7, duration: "1h-21 min", genre: "Action, Revenge", trailerLink: "​​https://www.youtube.com/watch?v=tmeOjFno6Do", imageName: "Avengers", isAddedInWatchList: false))
//    }
//}
