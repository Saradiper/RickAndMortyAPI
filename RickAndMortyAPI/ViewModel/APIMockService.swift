//
//  APIMockService.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 10/6/23.
//

import Foundation


//TODO: For testing
struct APIMockService: APIServiceProtocol {
    var result: Result<RickAndMortyResponse, APIError>
    
    func fetch<T: Decodable>(_ type: T.Type, url: URL?, completion: @escaping(Result<T, APIError>) -> Void) {
        guard let result = result as? Result<T, APIError> else {
            let error = APIError.badURL
            completion(Result.failure(error))
            return
        }
        completion(result)
    }
    
    
}
