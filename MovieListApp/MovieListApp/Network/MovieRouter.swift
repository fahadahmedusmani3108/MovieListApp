//
//  MovieRouter.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 30/12/2022.
//

import Foundation
import Alamofire


enum MovieRouter : APIConfiguration{
    
    case getMovieList
    
    var host: String {
        
        switch self {
        case .getMovieList:
            return "https://movielist1.free.beeceptor.com"
        }
    }
    
    var path: String {
        
        switch self {
        case .getMovieList:
            return "/list"
        }
    }
    
    var method: HTTPMethod {
        
        switch self {
        case .getMovieList:
            return .get
        }
    }
    
    var parameters: Parameters? {
        
        switch self {
        case .getMovieList:
            return nil
        }
    }
    
    enum HTTPHeaderField: String {
        case contentType = "Content-Type"
    }

    enum ContentType: String {
        case json = "application/json"
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let url = try host.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
