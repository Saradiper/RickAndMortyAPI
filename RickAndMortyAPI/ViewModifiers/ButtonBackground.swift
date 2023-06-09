//
//  ButtonBackground.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct ButtonBackground: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
//            .frame(maxWidth: 56, maxHeight: 56)
            .background(.darkGreenBackground)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .black, radius: 2)
    }
}
