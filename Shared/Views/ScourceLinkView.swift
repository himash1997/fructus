//
//  ScourceLinkView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-22.
//

import SwiftUI

struct ScourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Scource")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wekipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
        
    }
}

struct ScourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ScourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
