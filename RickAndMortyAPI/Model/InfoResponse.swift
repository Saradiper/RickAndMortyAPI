//
//  InfoResponse.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import UIKit
import Combine


struct InfoResponse: Codable, Equatable {
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
    
}
