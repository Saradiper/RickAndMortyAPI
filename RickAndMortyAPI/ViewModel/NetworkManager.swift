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
    
    func getCharactersUrl(urlProvider: URLProviderProtocol) -> String {
        return urlProvider.getBaseURL() + characterUrl
    }
    
    
    init(service: APIServiceProtocol = APIService(), urlProvider: URLProviderProtocol = URLProvider()) {
        self.service = service
        getCharactersData(url: URL(string: getCharactersUrl(urlProvider: urlProvider)))
    }
    
    
   
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
                    if let nextCharacterPage = decodedResponse.info?.next {
                        let nextURL = URL(string: nextCharacterPage)
                        
                        //Recursively fetch characters data from next page
                        self.getCharactersData(url: nextURL)
                    }
                    
                    if let results = decodedResponse.results {
                        if  self.decodeResponse == nil {
                            self.decodeResponse = decodedResponse
                        } else {
                            self.decodeResponse?.results?.append(contentsOf: results)
                        }
                    }
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
