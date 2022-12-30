//
//  Router.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 29/12/2022.
//

import Alamofire
import Foundation

protocol APIConfiguration: URLRequestConvertible {
    var host: String { get }
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}

