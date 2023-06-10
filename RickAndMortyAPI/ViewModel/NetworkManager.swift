//
//  NetworkManager.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import Foundation


class NetworkManager: ObservableObject {
    @Published var characterArray = [CharacterResponse]()
    @Published var decodeResponse: RickAndMortyResponse? = nil
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    let service: APIServiceProtocol
    
     let characterUrl = "/character/"
    
     func getCharactersUrl() -> String {
        return Constants.baseURL + characterUrl
    }
    
    
    init(service: APIServiceProtocol = APIService()) {
        self.service = service
        getCharactersData(url: URL(string: getCharactersUrl()))
    }
    
    
    //MARK: Pass URL to implement recursion to load characters from other pages
    func getCharactersData(url: URL?) {
    
        isLoading = true
        errorMessage = nil
    
        
        service.fetchCharactersData(url: url) { [unowned self] result in
            
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    print(error)
                case .success(let decodedResponse):
                    self.decodeResponse = decodedResponse
                }
            }
        }
    }
    
    
    //Preview helpers
    static func errorState() -> NetworkManager {
        let fetcher = NetworkManager()
        fetcher.errorMessage = APIError.url(URLError.init(.notConnectedToInternet)).localizedDescription
        return fetcher
    }
    
    
    static func successState() -> NetworkManager {
        let fetcher = NetworkManager()
        fetcher.characterArray = [CharacterResponse.createDefault()]
        return fetcher
    }
    
}
