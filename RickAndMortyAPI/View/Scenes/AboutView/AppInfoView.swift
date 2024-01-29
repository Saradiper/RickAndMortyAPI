//
//  AppInfoView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        VStack {
            Text("view.about.appInfo".localized)
                .modifier(InformationTextModifier())
        }
    }
}


struct AppInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
