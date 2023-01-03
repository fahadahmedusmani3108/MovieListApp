//
//  Errors.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 01/01/2023.
//

import Foundation

enum Errors: LocalizedError {
    
    case invalidResponseFromServer
    case jsonFileNotFound
    case invalidJsonFile
    
    var errorDescription: String? {
        switch self {
        case .invalidResponseFromServer:
            return "Unable to process your request at the moment."
            
        case .jsonFileNotFound:
            return "JSON file not found. Please validate filename."
        case .invalidJsonFile:
            return "Unable to read JSON file content"
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

    init?(error: Errors?) {
        guard let localizedError = error else { return nil }
        underlyingError = localizedError
    }
}
