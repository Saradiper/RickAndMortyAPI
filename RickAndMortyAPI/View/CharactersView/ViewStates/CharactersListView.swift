//
//  CharactersListView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct CharactersListView: View {
    var characters: [CharacterResponse]
    let imageSize: CGFloat = 100
    
    let colums = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: colums, spacing: 30)  {
                    ForEach(characters) { character in
                        NavigationLink {
                            CharacterDetailView(character: character)
                        } label: {
                            VStack(spacing: 20) {
                                ImageView(character: character)
                                    .frame(width: imageSize, height: imageSize)
                                
                                Text(character.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .modifier(GridModifier())
                            .overlay(CardGradient())
                        }
                }
            }
        }
    }
}



struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView(characters: NetworkManager.successState().characterArray)
    }
}
