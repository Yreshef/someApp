//
//  NetworkManager.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import Foundation
//import RxSwift

protocol NetworkServicing {
    func request<T: Decodable>(type: T.Type, route: NetworkRoutes, completion: @escaping (Result<T, Error>) -> Void)
}

final class NetworkService: NetworkServicing {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func request<T: Decodable>(type: T.Type, route: NetworkRoutes, completion: @escaping (Result<T, Error>) -> Void) {
        //TODO: Implement
        guard let url = URL(string: route.urlPath) else {
            print("Error: \(NetworkError.invalidURL)")
            completion(.failure(NetworkError.invalidURL))
            return
        }
        let urlRequest = URLRequest(url: url)
        let task = session.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(error))
            }
            guard let res = response as? HTTPURLResponse,
                  200...299 ~= res.statusCode else {
                completion(.failure(NetworkError.invalidResponse))
                return
            }
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(.success(result))
                return
            } catch {
                completion(.failure(NetworkError.decodingFailure(error: error)))
                return
            }
        }
        task.resume()
    }
}

enum NetworkError: LocalizedError {
    
    case noData
    case requestFailure(status: Int)
    case decodingFailure(error: Error)
    case invalidURL
    case invalidResponse
}
