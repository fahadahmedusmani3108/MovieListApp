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
    
    func errorAlert(error: Binding<Errors?>, buttonTitle: String = "Ok") -> some View {
        let localizedAlertError = LocalizedAlertError(error: error.wrappedValue)
        return alert(isPresented: .constant(localizedAlertError != nil), error: localizedAlertError) { _ in
            Button(buttonTitle) {
                error.wrappedValue = nil
            }
        } message: { error in
            Text(error.recoverySuggestion ?? "")
        }
    }
}
