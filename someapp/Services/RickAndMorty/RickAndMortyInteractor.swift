//
//  RickAndMortyInteractor.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import Foundation

protocol RickAndMortyInteracting {
}


enum RickAndMortyRoute: Routes {
    
    private var path: String {
        "https://rickandmortyapi.com/api"
    }
    
    case character
    
    var urlPath: String {
        switch self {
        case .character:
            return "\(path)/Character"
        }
    }
    
    var parameters: [String : String] {
        switch self {
        case .character:
            return [:]
        }
    }
}
