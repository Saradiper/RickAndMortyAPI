//
//  ErrorView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI


struct ErrorView: View {
    @ObservedObject var networkManager: NetworkManager
    
    var body: some View {
        Image("kisspngSickSancheza")
            .resizable()
            .scaledToFit()
            .frame(width: 110)
        Text(networkManager.errorMessage ?? NSLocalizedString("error.message.generic", comment: ""))
            .frame(width: 50)
    }
    
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(networkManager: NetworkManager())
    }
}
