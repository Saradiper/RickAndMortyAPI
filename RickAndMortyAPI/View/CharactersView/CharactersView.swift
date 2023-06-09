//
//  CharactersView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct CharactersView: View {
    @StateObject var networkManager = NetworkManager()
    
    var body: some View {
        if networkManager.isLoading {
            LoadingView()
        } else if networkManager.errorMessage != nil {
            ErrorView(networkManager: networkManager)
        } else {
            CharactersView(networkManager: networkManager)
        }
    }
        
}


struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
