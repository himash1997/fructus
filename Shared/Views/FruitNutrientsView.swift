//
//  FruitNutrientsView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-27.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: Properties
    var fruit: Fruit
    let nutrients : [String] = ["Enagry","Sugar","Fat","Protein","Vitamins"]
    
    //MARK: Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutriational value per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColor[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutration[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
            
    }
}
