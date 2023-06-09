//
//  GridModifier.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct GridModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical)
            .frame(width: 160, height: 190)
    }
}
