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
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: colums)  {
                    ForEach(characters) { character in
                        NavigationLink {
                            CharacterDetailView(character: character)
                        } label: {
                            VStack {
//                                if character.image != "" {
                                    AsyncImage(url: URL(string: character.image!)) { phase in
                                        if let image = phase.image {
                                            image.resizable()
                                                .scaledToFit()
                                                .padding()
//                                        }
                                        } else if phase.error != nil {
                                            AsyncImage(url: URL(string: character.defalutImage)) { phase in
                                                if let image = phase.image {
                                                    image.resizable()
                                                        .scaledToFit()
                                                        .padding()
                                                }
                                            }
                                        } else {
                                            ProgressView()
                                                .frame(width: imageSize, height: imageSize)
                                     }
                                }
                                
                                Text(character.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
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
