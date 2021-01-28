//
//  FruitDetailView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-20.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit : Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        //Ttitle
                        Text(fruit.tiitle)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //Subheadline
                        Text("Learn more about \(fruit.tiitle)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        ScourceLinkView()
                            .padding(.bottom, 40)
                    })
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .padding()
    }
}
