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
            VStack {
                Image("kisspngSickSancheza")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 140)
                
                Text(networkManager.errorMessage ?? NSLocalizedString("error.message.generic", comment: ""))
                    .foregroundColor(.black)
                    .modifier(InformationTextModifier())
                    
                Button {
                    networkManager.getCharactersData(url: URL(string:networkManager.getCharactersUrl()))
                } label: {
                    Text(NSLocalizedString("button.tryAgain", comment: ""))
                        .font(Font.body.bold())
                        .foregroundColor(.white)
                        .modifier(BoxBackground())
                }
                .padding()
            }
        .background(
            Image("GreenBackground")
                .renderingMode(.original)
                .resizable()
                .modifier(BackgroundImageModifier())
                .edgesIgnoringSafeArea(.all)
                
        )
        .modifier(BoxBackground())
    }
        
    
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
//        ErrorView()
        ErrorView(networkManager: NetworkManager())
    }
}
