//
//  APIService.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import Foundation


struct APIService: APIServiceProtocol {

    func fetch<T: Decodable>(_ type: T.Type, url: URL?, completion: @escaping(Result<T, APIError>) -> Void) {

        guard let url = url else {
            let error = APIError.badURL
            completion(Result.failure(error))
            return
        }

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in

            if let error = error as? URLError {
                completion(Result.failure(APIError.url(error)))
            } else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                completion(Result.failure(APIError.badResponse(statusCode: response.statusCode)))
            } else if let data = data {
                let decoder = JSONDecoder()
                do {
                    let decodeResponse = try decoder.decode(type, from: data)
                    completion(Result.success(decodeResponse))
                    print(decodeResponse)

                } catch {
                    completion(Result.failure(APIError.parsing(error as? DecodingError)))
                }
            }
        }
        task.resume()

    }
    

    
}
