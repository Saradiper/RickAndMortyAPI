//
//  URLProvider.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 14/6/23.
//

import Foundation


class URLProvider: URLProviderProtocol {
    func getBaseURL() -> String {
        return Constants.baseURL
    }
    
}
