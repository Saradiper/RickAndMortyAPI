//
//  AboutView.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 9/6/23.
//

import SwiftUI

struct AboutView: View {
    @State var pickerView = ["App.Information".localized , "Profile".localized]
    @State var pickerViewSelected = "App.Information".localized
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(.darkBlueBackground)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(.darkBlueBackground)], for: .normal)
    }
    
    
    var body: some View {
                ScrollView {
                    VStack(spacing: 32) {
                        VStack {
                            Image("Me")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                                .clipShape(Circle())
                            
                            Text("view.profile.name".localized)
                                .font(.title)
                            Text("view.profile.role".localized)
                            
                        }
                        
                        Picker("pickerViewSelected", selection: $pickerViewSelected) {
                            ForEach(pickerView, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .background(.white.opacity(0.6))
                        .cornerRadius(6)
                    }
                    
                    VStack() {
                        VStack() {
                            if pickerViewSelected == "App.Information".localized {
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
