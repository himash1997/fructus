//
//  FRUITSApp.swift
//  Shared
//
//  Created by Himash Nadeeshan on 2021-01-17.
//

import SwiftUI

@main
struct FRUITSApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboradingView()
            }else{
                ContentView()
            }
        }
    }
}
