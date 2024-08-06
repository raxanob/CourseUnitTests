//
//  Provider.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 06/08/24.
//

import UIKit

enum JokeError: Error {
    case noData
    case invalidResponse
}

protocol ProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ())
}

class Provider: ProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        let url = String(format: "https://api.hucknorris.io/jokes/categories")
        guard let serviceUrl = URL(string: url) else { return }
        
        let request = URLRequest(url: serviceUrl)
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if (error != nil) {
                completion(nil, .noData)
            }
            
            if let data = data {
                do {
                    let jokes = try JSONDecoder().decode([String].self, from: data)
                    completion(jokes, nil)
                } catch {
                    completion(nil, .noData)
                }
            }
        }.resume()
    }
}
