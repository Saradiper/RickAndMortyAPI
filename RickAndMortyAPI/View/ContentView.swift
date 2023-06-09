//
//  ContentView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack(spacing: 55) {
                        Image("imgC1")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: geometry.size.width)
                    
                    VStack(spacing: 10) {
                        NavigationLink {
                            CharactersView()
                        } label: {
                            Text(NSLocalizedString("button.mainView.characters", comment: ""))
                        }
                        .modifier(BlueButtonModifier())
                        
                        NavigationLink {
                            AboutView()
                        } label: {
                            Text(NSLocalizedString("button.mainView.about", comment: ""))
                        }
                        .modifier(BlueButtonModifier())
                        .padding()
                        Spacer()
                    }
                    
                    Image("Rick-and-Morty")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .padding()
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                
                .background(.black.opacity(0.1))
                .background(
                    Image("DarkStarsSky")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.bottom)
                    
                )
            }
           
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
