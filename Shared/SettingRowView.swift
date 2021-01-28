//
//  SettingRowView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-28.
//

import SwiftUI

struct SettingRowView: View {
    
    //MARK: Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil{
                    Text(content!)
                }else if linkLabel != nil && linkDestination != nil{
                    Link(linkLabel!, destination: URL(string: "htpps://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                }else{
                    EmptyView()
                }
                
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Himash Nadeeshan")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(name: "WebSite", linkLabel: "FaceBook", linkDestination: "facebook.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
