//
//  FructusApp.swift
//  Fructus
//
//  Created by Mansi Nerkar on 8/13/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var Onboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if Onboarding{
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
