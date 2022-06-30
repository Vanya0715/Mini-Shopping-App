//
//  HomeScreenView.swift
//  ShoppingAppUI
//
//  Created by Divyansh Dwivedi on 24/05/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            HStack{
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.system(.title3))
            
  //MARK: -Welcome tiltle
            
            Text("Hey,")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Find fresh fruits that you want")
            
  //MARK: -Search View
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.2))
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding()
                    
                )
                .frame(width: 350, height: 50, alignment: .center)
            
 //MARK: -Top Selling View
            
            Text("Top Selling")
                .font(.title)
                .fontWeight(.bold)
            TopSellingView()
            
 //MARK: -Near You View
            
            Text("Near You")
                .font(.title)
                .fontWeight(.bold)
            
            NearYouView()
            Spacer()
        }.padding()
    }
    
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeScreenView()
        
    }
}
