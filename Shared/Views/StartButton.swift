//
//  StartButton.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-17.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack (spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })
        .accentColor(.white)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
