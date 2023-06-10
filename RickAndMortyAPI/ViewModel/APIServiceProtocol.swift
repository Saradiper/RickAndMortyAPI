//
//  APIServiceProtocol.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 10/6/23.
//

import Foundation


protocol APIServiceProtocol {
    func fetchCharactersData(url: URL?, completion: @escaping(Result<RickAndMortyResponse, APIError>) -> Void)
    
}