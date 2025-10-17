//
//  NetworkManager.swift
//  Appetizers
//
//  Created by user285702 on 16.10.25.
//

import Foundation
final class NetworkManager{
    static let shared = NetworkManager()
    static let baseURl = "https://github.com/zaherrezai/json-appetuzers/blob/main/"
    private let appetizerURL = baseURl + "appetizer"
    
    private init (){}
    
    func getAppetizer(completed: @escaping(Result<[Appetizer], APError>) -> Void){
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let _ = error else {
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                
                return
            }
        }
    }
}

