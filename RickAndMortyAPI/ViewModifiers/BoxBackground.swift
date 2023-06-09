//
//  BoxBackground.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct BoxBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.darkGreenBackground)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .black, radius: 2)
    }
}
