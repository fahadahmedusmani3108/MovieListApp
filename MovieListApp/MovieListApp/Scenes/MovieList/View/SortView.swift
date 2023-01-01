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
        
        Button("Sort") {
            presentAlert = true
        }
        
        .foregroundColor(.black)
        
        .alert("Sort By", isPresented: $presentAlert) {
            
            Button("Title") {
                movieList.sort(by: { $0.title! < $1.title! })
            }
            
            Button("Release Date") {
                movieList.sort(by: { $0.releasedDate! < $1.releasedDate! })
            }
            
            Button("Cancel") {}
        }
        
    }
}
