//
//  FruitCardView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-17.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: Properties
    @State private var isAnimating : Bool = false
    var fruit : Fruit
    
    //MARK: Body
    var body: some View {
        
        ZStack {
            VStack(spacing: 20){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruit.tiitle)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .padding(.horizontal,20)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                StartButton()
            }
        }
//        .onAppear{
//            withAnimation(.easeOut(duration: 0.5)){
//                isAnimating = true
//            }
//        }
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom))
//        .cornerRadius(20)
//        .padding(.horizontal, 20)
        .onAppear {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
          }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .preferredColorScheme(.light)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
