//
//  LoadingView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 8/6/23.
//

import SwiftUI

struct LoadingView: View {
    @State private var isRotating = 0.0
    
    var body: some View {
        VStack {
            Image("MortyFace")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .rotationEffect(.degrees(isRotating))
                .onAppear {
                    withAnimation(.linear(duration: 1)
                        .speed(0.4).repeatForever(autoreverses: false)) {
                        isRotating = 360.0
                    }
                }
            
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
