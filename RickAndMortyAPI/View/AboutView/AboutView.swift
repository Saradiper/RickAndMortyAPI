//
//  AboutView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct AboutView: View {
    @State var pickerView = ["App info", "Profile"]
    @State var pickerViewSelected = "App info"
    
    var body: some View {
                ScrollView {
                    VStack(spacing: 32) {
                        VStack {
                            Image("Me")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                                .clipShape(Circle())
                            
                            Text(NSLocalizedString("view.profile.name", comment: ""))
                                .font(.title)
                            Text(NSLocalizedString("view.profile.role", comment: ""))
                            
                        }
                        
                        Picker("pickerViewSelected", selection: $pickerViewSelected) {
                            ForEach(pickerView, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .background(.white.opacity(0.4))
                        .cornerRadius(6)
                        
                    }
                    
                    VStack() {
                        VStack() {
                            
                            if pickerViewSelected == "App info" {
                                AppInfoView()
                                
                            } else {
                                ProfileView()
                    
                            }
                            
                            Spacer()
                        }
                        
                    }

        }
                .foregroundColor(.white)
        .background(.black.opacity(0.6))
        .background(
            Image("Starts")
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
        )
    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
