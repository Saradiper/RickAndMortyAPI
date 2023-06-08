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

struct InfoResponse: Codable, Equatable {
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}

struct CharacterResponse: Codable, Hashable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: Location?
    var location: Location?
    var image: String
    var episode: [String] //url
    var url: String
    var created: String
    
    init() {
        self.id = 0
        self.name = ""
        self.status = ""
        self.species = ""
        self.status = ""
        self.type = ""
        self.gender = ""
        self.image = ""
        self.episode = []
        self.url = ""
        self.created = ""
    }
    
    static func createDefault() -> CharacterResponse {
        var characterResponse = CharacterResponse()
        characterResponse.id = 1
        characterResponse.name = "name"
        characterResponse.status = "status"
        characterResponse.species = "species"
        characterResponse.type = "type"
        characterResponse.gender = "gender"
        characterResponse.image = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
        characterResponse.episode = [
            "https://rickandmortyapi.com/api/episode/1",
            "https://rickandmortyapi.com/api/episode/2"
            ]
        characterResponse.url = "https://rickandmortyapi.com/api/character/1"
        characterResponse.created = "2017-11-04T18:48:46.250Z"
        
        return characterResponse
    }
}

struct Location: Codable, Hashable {
    var name: String?
    var url: String?
    

}
