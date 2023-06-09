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

}





