//
//  CharacterDetailView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct CharacterDetailView: View {
    var character: CharacterResponse
    let imageSize: CGFloat = 600
    
    var body: some View {
            ScrollView {
                VStack(spacing: 15) {
                    ImageView(character: character)
                    Text(character.name)
                        .font(.title)
                    VStack(alignment: .leading) {
                        Text("Species: \(character.species)")
                        if character.type != "" {
                            Text("Type: \(character.type)")
                        }
                        Text("Gender: \(character.gender)")
                        Text("Location: \(character.location?.name ?? "Unknown")")
                    }
                  
                
            }
                .padding()
                .overlay(CardGradient())
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: NetworkManager.successState().characterArray[0])
    }
}
