//
//  APIClient.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 30/12/2022.
//

import Foundation
import Alamofire
import Combine

class APIClient{
    
    @discardableResult
    static func performRequest<T>(route: APIConfiguration) async throws -> T where T: Decodable {
        
        do{
            return try await AF.request(route.asURLRequest())
                .serializingDecodable(T.self)
                .value
        }
        catch(let exception){
            throw exception
        }
    }
}
