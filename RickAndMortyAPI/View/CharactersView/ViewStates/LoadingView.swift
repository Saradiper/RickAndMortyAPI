//
//  LoadingView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI


struct LoadingView: View {
    
    var body: some View {
        VStack {
            Image("MortyFace")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            
            Text(NSLocalizedString("isLoading.true.characters", comment: ""))
                .modifier(InformationTextModifier())
        
        }
    }
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
