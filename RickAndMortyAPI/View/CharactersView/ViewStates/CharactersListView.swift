//
//  CharactersListView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct CharactersListView: View {
//    let networkManager: NetworkManager
    let characters: [CharacterResponse]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView(characters: NetworkManager().characterArray)
    }
}
