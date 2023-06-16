//
//  APIServiceProtocol.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 10/6/23.
//

import Foundation


protocol APIServiceProtocol {
    func fetch<T: Decodable>(_ type: T.Type, url: URL?, completion: @escaping(Result<T, APIError>) -> Void) 
    
}
