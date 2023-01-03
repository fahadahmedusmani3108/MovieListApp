//
//  AlertView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct SortView: View {
    
    @State var presentAlert : Bool = false
    @Binding var movieList : [Movie]
    
    var body: some View {
        
        Button(AppStrings.sort) {
            presentAlert = true
        }
        
        .foregroundColor(.black)
        
        .alert(AppStrings.sortBy, isPresented: $presentAlert) {
            
            Button(AppStrings.title) {
                movieList.sort(by: { $0.title! < $1.title! })
            }
            
            Button(AppStrings.releaseDate) {
                movieList.sort(by: { $0.releasedDate! < $1.releasedDate! })
            }
            
            Button(AppStrings.cancel) {}
        }
        
    }
}
