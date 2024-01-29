//
//  ProfileView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("view.profile.infoHeader".localized)
                .font(.callout.bold())
            
            VStack(spacing: 5) {
                Text("view.profile.candidatePhone".localized)
                Text("view.profile.candidateMail".localized)
            }
                .font(.caption)
        }
        .padding()
    }
        
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
