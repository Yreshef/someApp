//
//  NetworkManager.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import Foundation

protocol NetworkServicing {
    func request<T>(type: T.Type, route: NetworkRoutes)
}


final class NetworkService: NetworkServicing {
    
    
    func request<T>(type: T.Type, route: NetworkRoutes) {
        //TODO: Implement
    }
}
