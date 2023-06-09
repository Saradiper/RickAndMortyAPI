//
//  CharacterResponse.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import UIKit
import Combine


struct CharacterResponse: Codable, Hashable, Identifiable {
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
