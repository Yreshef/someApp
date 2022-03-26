//
//  RickAndMortyInteractor.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import Foundation

protocol RickAndMortyInteracting { }


enum RickAndMortyRoute: Routes {
    
    private var path: String {
        "https://rickandmortyapi.com/api"
    }
    
    case character
    case morty
    
    var urlPath: String {
        switch self {
        case .character:
            return "\(path)/character/"
        case .morty:
            return "\(path)/character/2"
        }
    }
    
    var parameters: [String : String] {
        switch self {
        case .character:
            return [:]
        case .morty:
            return [:]
        }
    }
}


final class RickAndMortyInteractor: RickAndMortyInteracting { }
