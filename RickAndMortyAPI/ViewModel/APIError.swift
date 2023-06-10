//
//  APIError.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import Foundation


enum APIError: Error, CustomStringConvertible {
    case badURL
    case badResponse(statusCode: Int)
    case url(URLError?)
    case parsing(DecodingError?)
    case unknown
    
    var localizedDescription: String {
        //User feedback
        switch self {
        case .unknown:
            return NSLocalizedString("error.message.badResponse", comment: "")
        case .badURL, .parsing:
            return NSLocalizedString("error.message.generic", comment: "")
        case .badResponse(_):
            return NSLocalizedString("error.message.statusCode", comment: "")
        case .url(let error):
            return error?.localizedDescription ?? NSLocalizedString("error.message.generic", comment: "")
        }
    }
    
    var description: String {
        //Info for debugging
        switch self {
        case .unknown:
            return NSLocalizedString("error.message.badResponse", comment: "")
        case .badURL:
            return NSLocalizedString("error.message.badURL", comment: "")
        case .url(let error):
            return error?.localizedDescription ?? NSLocalizedString("error.message.sesion", comment: "")
        case .parsing(let error):
            return NSLocalizedString("error.message.parsing", comment: "") + (error?.localizedDescription ?? "")
        case .badResponse(statusCode: let statusCode):
            return NSLocalizedString("error.message.statusCode", comment: "") + "\(statusCode)"
        }
    }
    
    
}
