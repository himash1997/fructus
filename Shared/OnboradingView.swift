//
//  OnboradingView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-17.
//

import SwiftUI

struct OnboradingView: View {
    
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboradingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboradingView(fruits: fruitsData)
    }
}
