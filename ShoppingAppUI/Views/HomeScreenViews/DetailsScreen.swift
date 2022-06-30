//
//  DetailsScreen.swift
//  ShoppingAppUI
//
//  Created by Divyansh Dwivedi on 24/05/22.
//
import UIKit
import SwiftUI


struct RoundedCornersShape: Shape {
   let corners: UIRectCorner
   let radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
       let path = UIBezierPath(roundedRect: rect,
                               byRoundingCorners: corners,
                               cornerRadii: CGSize(width: radius, height: radius))
       return Path(path.cgPath)
   }
}

//MARK: - Counter View 

struct Counter: View {
    @State var count = 0
    
    var body: some View {
        HStack(spacing: 25) {
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(.title)
                .fontWeight(.medium)
            
            Button {
                if count != 0 {
                    count -= 1
                }
                
            } label: {
                Image(systemName: "minus")
            }
            
        }.foregroundColor(.black)
            .frame(width: 130, height: 40)
            .background(Color("bgColor").opacity(0.15))
            .cornerRadius(10)
            .padding()
        
    }
}

struct DetailsScreen: View {
    @State var fruit: fruitTitle
    
    var body: some View {
        
//MARK: -Background View
        
        VStack(alignment:.leading, spacing: 25) {

                Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornersShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
              
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
            //Fruit image
                .overlay(
                    Image("\(fruit.rawValue)").resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .offset(y: 10)
                        .shadow(color: .gray, radius: 3, x: 3, y: 3)
                )
            Spacer()
            
//MARK: -Fruit description
            
            Text("\(fruit.rawValue) - medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)

//MARK: -Duration View
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor")
                    .opacity(0.15))
                    .overlay(Image(systemName: "hourglass")
                    .font(.system(size: 35)))
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Delivery Time")
                        .font(.title3)
                    Text("25 - 30 Min")
                        .font(.subheadline)
                }
            }.padding(.horizontal)
            
//MARK: -Fruit Price and Add Counter
            
            HStack {
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter()
            }
            
//MARK: -Add to cart View
            
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
                .frame(width: 350, height: 50, alignment: .center).cornerRadius(15).shadow(color: .gray, radius: 5, x: 0, y: 5)
            
                .overlay(
                    Text("Add to cart")
                        .font(.system(.title2))
                        .fontWeight(.medium)
                )
                .padding(.horizontal)
            
        }
        
    }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
            DetailsScreen(fruit: .apple)
    }
}
