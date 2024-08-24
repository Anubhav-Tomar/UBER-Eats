//
//  MenuItemSection.swift
//  UBER-Eats
//
//  Created by Anubhav Tomar on 24/08/24.
//

import SwiftUI

struct MenuItemSection: View {
    
    let option: MenuBarOptions
    @Binding var currentOption: MenuBarOptions
    
    var body: some View {
        VStack (alignment: .leading, spacing: 24){
            Text(option.title)
                .font(.title.bold())
                .padding(.vertical)
            
            ForEach(option.foodItems) { FoodItem in
                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(FoodItem.title)
                            .font(.title3.bold())
                        
                        Text(FoodItem.description)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("Price: \(FoodItem.price)")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                    }
                    Spacer()
                    
                    Image(FoodItem.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 96, height: 88)
                        .clipped()
                        .cornerRadius(10)
                }
                
                Divider()
            }
        }
        .modifier(OffsetModifier(option: option, currentOption: $currentOption))
    }
}
