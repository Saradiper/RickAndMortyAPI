//
//  CharactersView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct CharactersView: View {
//    @ObservedObject var manager = MultiNetworkManager()
    @StateObject var networkManager = NetworkManager()
//    @State private var characters: [CharacterResponse] = []
//    var data: RickAndMortyAPI = RickAndMortyAPI()
    
    var body: some View {
        if networkManager.isLoading {
            LoadingView()
        } else if networkManager.errorMessage != nil {
            ErrorView(networkManager: networkManager)
        } else {
            CharactersView(networkManager: networkManager)
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .onAppear {
//                networkManager.getCharactersData()
//            }
    }
}


struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
