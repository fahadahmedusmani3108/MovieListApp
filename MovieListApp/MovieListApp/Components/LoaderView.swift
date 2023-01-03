//
//  LoaderView.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 30/12/2022.
//

import SwiftUI

struct LoaderView: View {
 
    var scaleSize : CGFloat = 2.0
    var tintColor : Color = .blue
   
    var body: some View {
        VStack{
            ProgressView()
                .scaleEffect(scaleSize, anchor: .center)
                .progressViewStyle(CircularProgressViewStyle(tint: tintColor))
            Text("Loading...")
                .font(.subheadline)
                .padding(.top, 20)
        }
    }
}

