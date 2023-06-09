//
//  ProfileView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text(NSLocalizedString("view.profile.infoHeader", comment: ""))
                .font(.callout.bold())
            
            VStack(spacing: 5) {
                Text(NSLocalizedString("view.profile.candidatePhone", comment: ""))
                Text(NSLocalizedString("view.profile.candidateMail", comment: ""))
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
