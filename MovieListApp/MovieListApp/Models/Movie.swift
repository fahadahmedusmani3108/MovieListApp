//
//  Movie.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import Foundation

class Movie : Codable{
    
    var title : String?
    var description: String?
    var rating : String?
    var duration: String?
    var genre : String?
    var releasedDate: String?
    var trailerLink : String?
    var imageName: String?
    var isAddedInWatchList: Bool?
    
    init(title: String? = nil, description: String? = nil, rating: String? = nil, duration: String? = nil, genre: String? = nil, releasedDate: String? = nil, trailerLink: String? = nil, imageName : String? = nil, isAddedInWatchList : Bool? = nil) {
        self.title = title
        self.description = description
        self.rating = rating
        self.duration = duration
        self.genre = genre
        self.releasedDate = releasedDate
        self.trailerLink = trailerLink
        self.imageName = imageName
        self.isAddedInWatchList = isAddedInWatchList
    }
}
