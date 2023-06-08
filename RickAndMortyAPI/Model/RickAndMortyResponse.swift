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
    
    enum CodingKeys: String, CodingKey {
        case info = "info"
        case results = "results"
    }
    
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.info = try valueContainer.decode(InfoResponse.self, forKey: CodingKeys.info)
        self.results = try valueContainer.decode([CharacterResponse].self, forKey: CodingKeys.results)
       }
    
}





