//
//  ContentView.swift
//  Shared
//
//  Created by Himash Nadeeshan on 2021-01-17.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    var fruitData : [Fruit] = fruitsData
    @State private var isShowingSetting : Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruitData.shuffled()){ fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSetting = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
            )
            .sheet(isPresented: $isShowingSetting){
                SettingsView()
            }
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
