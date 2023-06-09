//
//  NetworkManager.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import Foundation


class NetworkManager: ObservableObject {
    //characterArray: For the CharactersListView_Previews
    @Published var characterArray = [CharacterResponse]()
    @Published var decodeResponse: RickAndMortyResponse? = nil
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
     let characterUrl = "/character"
    
     func getCharactersUrl() -> String {
        return Constants.baseURL + characterUrl
    }
    
    
    init() {
        getCharactersData()
    }
    
    
    func getCharactersData() {
    
        isLoading = true
        errorMessage = nil
        
        let service = APIService()
        let url = URL(string: getCharactersUrl())
        
        service.fetchCharactersData(url: url) { [unowned self] result in
            
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    //Print(error.description)
                    print(error)
                case .success(let decodedResponse):
                    self.decodeResponse = decodedResponse
                }
            }
        }
    }
    
    
}
