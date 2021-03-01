//
//  newApp.swift
//  new
//
//  Created by 張馨予 on 2021/1/23.
//

import SwiftUI
import GoogleSignIn
import Firebase

@main
struct newApp: App {
    //tell swiftUI use my AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegates.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            WelcomePage()

        }
    }
}
