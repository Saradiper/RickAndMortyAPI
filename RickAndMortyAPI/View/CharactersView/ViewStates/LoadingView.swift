//
//  LoadingView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack(spacing: 10) {
            Image("MortyFace")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text(NSLocalizedString("isLoading.true.characters", comment: ""))
                .padding()
                
        }
    }
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
