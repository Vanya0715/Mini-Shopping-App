//
//  FruitCardView.swift
//  ShoppingAppUI
//
//  Created by Divyansh Dwivedi on 24/05/22.
//

import SwiftUI


//MARK: - Fruit Card View

struct ImageView: View {

    let fruits: FruitModel
    
    var body: some View {
        ZStack {
//MARK: -Fruit Title And Cost
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .textCase(.uppercase)
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
                
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            
//MARK: -Fruit Image
            
            ZStack {
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }
            .offset(y:60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}


