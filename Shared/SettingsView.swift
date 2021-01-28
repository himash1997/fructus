//
//  SettingsView.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-28.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: Section1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 9)
                        HStack(){
                            Image("logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: Section2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding, label: {
                            Text("Restart".uppercased())
                        })
                        
                    }
                    
                    //MARK: Section3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        Divider().padding(.vertical, 4)
                        SettingRowView(name: "Developer", content: "Himash")
                        SettingRowView(name: "Designer", content: "Nadeeshan")
                        SettingRowView(name: "Compatibility", content: "IOS 14")
                        SettingRowView(name: "WebSite", linkLabel: "FaceBook", linkDestination: "facebook.com")
                        SettingRowView(name: "Twitter", linkLabel: "@Himash", linkDestination: "facebook.com/himashnadeeshan")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    })
                    
                }//: VStack
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            }//: Scrollview
        }//: Navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
