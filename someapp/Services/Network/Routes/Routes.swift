//
//  Routes.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import Foundation

protocol Routes {
    var urlPath: String { get }
    var parameters: [String:String] { get }
}


enum NetworkRoutes: Routes {
    
    case rickAndMortyAPI(route: RickAndMortyRoute)
    
    var urlPath: String {
        switch self {
        case .rickAndMortyAPI(let route):
            return route.urlPath
        }
    }
    
    var parameters: [String : String] {
        switch self {
        case .rickAndMortyAPI(let route):
            return route.parameters
        }
    }
}
