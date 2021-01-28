//
//  FruitHeaderView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-21.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit : Fruit
    @State private var isAnimation : Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8)
                .padding(.vertical, 20) //use for ipad screen
                .scaleEffect(isAnimation ? 1.0 : 6.0)
        }
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeIn(duration: 0.5)){
                isAnimation = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
