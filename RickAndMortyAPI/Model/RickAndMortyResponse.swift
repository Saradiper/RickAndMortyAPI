//
//  RickAndMortyResponse.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import UIKit
import Combine


struct RickAndMortyResponse: Codable, Equatable {
    var info: InfoResponse?
    var results: [CharacterResponse]?

    
    static func createDefault() -> RickAndMortyResponse {
            var response = RickAndMortyResponse()
            response.info = InfoResponse(count: 1, pages: 1, next: nil, prev: nil)
            response.results = [CharacterResponse.createDefault()]
            return response
        }
    
}





