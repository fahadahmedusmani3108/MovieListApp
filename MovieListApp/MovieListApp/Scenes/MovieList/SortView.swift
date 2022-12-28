//
//  AlertView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 28/12/2022.
//

import SwiftUI

struct SortView: View {
   
    @State var presentAlert : Bool = false
    
    var body: some View {
      
        Button("Sort") {
            presentAlert = true
        }

        .foregroundColor(.black)
       
        .alert("Sort By", isPresented: $presentAlert) {
                
                Button("Title") {
                    
                }
                
                Button("Release Date") {
                    
                }
                
                Button("Cancel") {}
            }
        
    }
}
