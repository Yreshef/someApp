//
//  Character.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import Foundation


struct Character: Decodable {
    
    var id: String
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: Origin
    var location: Location
    var image: String
    var episode: [String]
    var url: String
    var created: String
}

struct Origin: Decodable {
    var name: String
    var url: String
}

struct Location: Decodable {
    var name: String
    var url: String
}
