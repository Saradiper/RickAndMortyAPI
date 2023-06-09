//
//  BlueButtonModifier.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct BlueButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 280)
            .padding()
            .background(.darkBlueBackground)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .lightBlueBackground, radius: 6)
    }
}
