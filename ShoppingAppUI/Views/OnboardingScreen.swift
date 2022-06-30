//
//  OnboardingScreen.swift
//  ShoppingAppUI
//
//  Created by Divyansh Dwivedi on 24/05/22.
//

import SwiftUI

struct OnboardingScreen: View {
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 30){
                Spacer()
//MARK: - Background Image and Welcome Text
                Image("img")
                    .resizable()
                    .aspectRatio( contentMode: .fill).padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order Your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()

//MARK: -Next Button Navigation and View
                
                NavigationLink(destination: HomeScreenView(),
                               label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack (spacing: 10){
                                Text("Next")
                                    .fontWeight(.bold)
                                    .font(.title)
                                Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                        )
                })
                Spacer()
            }
        }    .navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}


struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
