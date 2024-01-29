//
//  CharactersListView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct CharactersListView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var characters: FetchedResults<CachedCharacter>
 
    
    var fetchCharacters: [CharacterResponse]
    let imageSize: CGFloat = 100
    
    let colums = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colums, spacing: 30)  {
                ForEach(characters, id: \.self) { character in
                    ListCardView(character: character)
                }
                .modifier(GridModifier())
                .overlay(CardGradient())
            }
            .toolbar {
                NavigationLink {
                    CharacterFavoriteListView()
                } label: {
                    Text("Favorites")
                }
            }
            
        }
        .task {
            
                await MainActor.run {
                    if characters.count == 0 {
                        for character in fetchCharacters {
                            let cached = CachedCharacter(context: moc)
                            cached.name = character.name
                            cached.status = character.status
                            cached.species = character.species
                            cached.type = character.type
                            cached.gender = character.gender
                            cached.image = character.image
                            cached.url = character.url
                            cached.created = character.created
                            cached.id = Int64(character.id)
                            cached.favorite = false
                            cached.cachedLocation = CachedPlanet(context: moc)
                            cached.cachedLocation?.name = character.location?.name
                            cached.cachedLocation?.url = character.location?.url
                            
                            cached.cachedOrigin = CachedPlanet(context: moc)
                            cached.cachedOrigin?.name = character.origin?.name
                            cached.cachedOrigin?.url = character.origin?.url
                            
                        }
                        
                        do {
                            if moc.hasChanges {
                                try moc.save()
                                print("successSaved".localized)
                            }
                        }
                        
                        catch {
                            print(error.localizedDescription)
                        }
                    }
                }
            }
    }
}



struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView(fetchCharacters: NetworkManager.successState().characterArray)
    }
}
