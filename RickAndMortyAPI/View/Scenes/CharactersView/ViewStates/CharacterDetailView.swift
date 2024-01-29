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
                    Text("Species: \(character.wrappedSpecies)")
                    
                    Text("Type: \(character.wrappedType != "" ? character.wrappedType : "Unknown")")
                    
                    Text("Gender: \(character.wrappedGender)")

                    Text("Location: \(character.wrappedName)")
                    
                    Toggle("Is a favorite character?", isOn: $character.favorite)
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
