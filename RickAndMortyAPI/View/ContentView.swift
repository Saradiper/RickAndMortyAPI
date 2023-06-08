//
//  ContentView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                NavigationLink("Characters") {
                    CharactersView()
                }
                NavigationLink("About"){
//                    AboutView()
                }
                .padding()
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
