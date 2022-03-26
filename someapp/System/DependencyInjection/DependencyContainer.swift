//
//  DependencyContainer.swift
//  someapp
//
//  Created by Yohai(private) on 26/03/2022.
//

import Foundation

protocol DependencyContaining {
    func initializeService()
    
    var networkService: NetworkServicing { get }
}

final class DependencyContainer: DependencyContaining {
    
    let networkService: NetworkServicing = NetworkService()
    
    func initializeService() {
        ///Services that require manual init
    }
    
    static let shared: DependencyContaining = DependencyContainer()
    
    private init() { }
}
