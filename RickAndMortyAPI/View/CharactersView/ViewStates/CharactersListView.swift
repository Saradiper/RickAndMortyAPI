//
//  CharactersListView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct CharactersListView: View {
//    let networkManager: NetworkManager
    //Karin:
    let characters: [CharacterResponse]
    
    var body: some View {
        List {
            ForEach(characters) { character in
                /*@START_MENU_TOKEN@*/Text(character.name)/*@END_MENU_TOKEN@*/
            }
        }
    }
}


struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView(characters: NetworkManager().characterArray)
//        CharactersListView(characters: NetworkManage.successState().characterArray)
    }
}
