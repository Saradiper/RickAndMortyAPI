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
    
    func fetchCharactersData(url: URL?, completion: @escaping (Result<RickAndMortyResponse, APIError>) -> Void) {
        completion(result)
    }
    
    
}
