//
//  CardGradient.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI


struct CardGradient: View {
    var myGradient = Gradient(
        colors: [
            .lightBlueBackground,
            .lightGreenBackground
        ]
    )
    
    var body: some View {
        Rectangle()
            .stroke(
                LinearGradient(
                    gradient: myGradient,
                    startPoint: .leading,
                    endPoint: .trailing
                ),
                lineWidth: 3
            )
    }
}
