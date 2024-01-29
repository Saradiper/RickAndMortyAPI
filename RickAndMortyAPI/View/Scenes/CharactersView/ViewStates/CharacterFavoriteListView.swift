//
//  CharacterFavoriteListView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 28/1/24.
//

import SwiftUI

struct CharacterFavoriteListView: View {
    @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "favorite == true")) var characters: FetchedResults<CachedCharacter>
    
    let imageSize: CGFloat = 100
    let colums = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        if characters.count == 0 {
            Text("nilCharacters".localized)
        } else {
        ScrollView {
                LazyVGrid(columns: colums, spacing: 30)  {
                    ForEach(characters, id: \.self) { character in
                        ListCardView(character: character)
                    }
                    .modifier(GridModifier())
                    .overlay(CardGradient())
                }
            }
            
        }
    }
}

struct CharacterFavoriteListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterFavoriteListView()
    }
}
