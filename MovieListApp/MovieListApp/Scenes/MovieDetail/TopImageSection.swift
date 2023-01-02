//
//  TopImageSection.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//
//
//ZStack{
//    HStack{
//        Text("\(movie.rating ?? 0, specifier: "%.1f")")
//            .font(Design.Fonts.title)
//            .foregroundColor(Design.Colors.blackTitleColor)
//
//        Text("/10")
//            .font(Design.Fonts.body)
//            .fontWeight(.bold)
//            .foregroundColor(Design.Colors.grayTextColor)
//            .lineLimit(1)
//    }
//}

import SwiftUI

struct TopImageSection: View {
    
    @ObservedObject var movie : Movie
    
    var body: some View {
        
        HStack(spacing: 10){
            
            VStack{
                
                Image(movie.imageName ?? "")
                    .resizable()
                    .frame(width: 120, height: 220, alignment: .top)
                
                Spacer()
            }
            
            VStack(spacing: 20){
                
                Text(movie.title ?? "")
                    .font(Design.Fonts.title)
                    .foregroundColor(Design.Colors.blackTitleColor)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                Button(action: {
                    
                    movie.isAddedInWatchList?.toggle()
                    movie.objectWillChange.send()
                    
                }) {
                    Text($movie.isAddedInWatchList.wrappedValue ?? false ? "REMOVE FROM WATCHLIST" : "+ ADD TO WATCHLIST")
                        .padding(10)
                        .font(Design.Fonts.subtitle)
                        .foregroundColor(Design.Colors.grayTextColor)
                        .fontWeight(.bold)
                        .background(Design.Colors.lightGrayBackground)
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
                        .font(Design.Fonts.subtitle)
                    
                        .padding(10)
                        .foregroundColor(Design.Colors.blackTitleColor)
                        .fontWeight(.bold)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                            
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            
            VStack{
                HStack(spacing: 0){
                    
                    Text("\(movie.rating ?? 0, specifier: "%.1f")")
                        .font(Design.Fonts.title)
                        .foregroundColor(Design.Colors.blackTitleColor)
                        
                    
                    Text("/10")
                        .font(Design.Fonts.body)
                        .fontWeight(.bold)
                        .foregroundColor(Design.Colors.grayTextColor)
                        .lineLimit(1)
                        .padding(.trailing, 10)
                   
                }
                Spacer()
            }
            
        }
        
    }
}

struct TopImageSection_Previews: PreviewProvider {
    
    static var previews: some View {
        TopImageSection(movie: Movie.init(title: "Avengers  .frame(maxWidth: .infinity, alignment: .leading) Avengers Avengers Avengers", rating: 8.7, duration: "1h-21 min", genre: "Action, Revenge", trailerLink: "​​https://www.youtube.com/watch?v=tmeOjFno6Do", imageName: "Avengers", isAddedInWatchList: false))
    }
}
