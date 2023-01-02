//
//  AppConstants.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 02/01/2023.
//

import SwiftUI

struct Design {
   
    struct Colors{
        static let grayTextColor : Color = Color.init(red: 174/255, green: 174/255, blue: 174/255)
        static let blackTitleColor : Color = Color.init(red: 0, green: 0, blue: 0)
        static let lightGrayBackground : Color = Color(red: 0.875, green: 0.875, blue: 0.875)
    }
    
    struct Fonts {
       
        static let title : Font = Font.system(size: 22.0, weight: .bold)
        static let body : Font = Font.system(size: 16.0, weight: .regular)
        static let subtitle : Font = Font.system(size: 12.0, weight: .regular)
    }
    
}

struct API {
     static let baseUrl = "https://movieapp1.free.beeceptor.com"
     static let getMoviesList = "/list"
}
