//
//  ListCardView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 29/1/24.
//

import SwiftUI

struct ListCardView: View {
    var character: CachedCharacter
    
    let imageSize: CGFloat = 100
    
    var body: some View {
                        NavigationLink {
                            CharacterDetailView(character: character)
                        } label: {
                            
                            VStack(spacing: 20) {
                                ZStack(alignment: .topTrailing) {
                                    
                                    
                                    ImageView(character: character)
                                        .frame(width: imageSize, height: imageSize)
                                    //.padding()
                                    
                                    if character.favorite {
                                        ZStack() {
                                            Circle()
                                                .fill(.black)
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color.yellow)
                                        }
                                        
                                        .frame(width: 16, height: 16)
                                    }
                                    
                                }
                                
                                Text(character.wrappedName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            
                            
                            
                        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
