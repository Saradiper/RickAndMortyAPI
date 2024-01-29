//
//  CharacterDetailView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct CharacterDetailView: View {
    @EnvironmentObject var dataController: DataController
    @ObservedObject var character: CachedCharacter
    let imageSize: CGFloat = 150
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ImageView(character: character)
                    .frame(width: imageSize, height: imageSize)
                
                Text(character.wrappedName)
                    .font(.title)
               
                VStack(alignment: .leading, spacing: 16) {
                    Text("\("species".localized): \(character.wrappedSpecies)")
                    
                    Text("\("type".localized): \(character.wrappedType != "" ? character.wrappedType : "unknown".localized)")
                    
                    Text("\("gender".localized): \(character.wrappedGender)")

                    Text("\("location".localized): \(character.wrappedName)")
                    
                    Toggle("favorite.Toggle".localized, isOn: $character.favorite)
                }
                .padding()
                
            }
            .onChange(of: character.favorite, perform: dataController.updateData)
            .overlay(CardGradient())
            .padding()
        }
        
    }
}

//struct CharacterDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailView(character: NetworkManager.successState().characterArray[0])
//    }
//}
