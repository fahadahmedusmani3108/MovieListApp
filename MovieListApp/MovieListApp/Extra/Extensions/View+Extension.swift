//
//  View+Extension.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 31/12/2022.
//

import SwiftUI

extension View{
    @ViewBuilder func hidden(_ shouldHide: Bool) -> some View{
        switch shouldHide{
        case true: self.hidden()
        case false: self
        }
    }
}
