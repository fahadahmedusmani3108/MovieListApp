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
        //        return Future(){ promise in
        //            AF.request(route)
        //                .responseDecodable { (response: DataResponse<T, AFError>) in
        //
        //                    switch response.result{
        //                    case .success(let value):
        //                        promise(.success(value))
        //
        //                    case .failure(let error):
        //                        promise(.failure(error))
        //                    }
        //                }
        //        }
    }
}

protocol MovieNetworkServiceProtocol{
    func getMovies() async throws -> [Movie]?
}

class MovieNetworkService: MovieNetworkServiceProtocol{
    
    func getMovies() async throws -> [Movie]? {
        do{
            return try await APIClient.performRequest(route: MovieRouter.getMovieList)
        }
        catch(let exception){
            throw exception
        }
    }
}
