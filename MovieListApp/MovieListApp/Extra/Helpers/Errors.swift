//
//  Errors.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//

import Foundation

enum Error: LocalizedError {
    
    case invalidResponseFromServer
    
    var errorDescription: String? {
        switch self {
        case .invalidResponseFromServer:
            return "Unable to process your request at the moment."
        }
    }
}

struct LocalizedAlertError: LocalizedError {
    
    let underlyingError: LocalizedError
    var errorDescription: String? {
        underlyingError.errorDescription
    }
    var recoverySuggestion: String? {
        underlyingError.recoverySuggestion
    }

    init?(error: Error?) {
        guard let localizedError = error else { return nil }
        underlyingError = localizedError
    }
}
