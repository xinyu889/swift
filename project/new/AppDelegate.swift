//
//  AppDelegate.swift
//  new
//
//  Created by Jackson on 1/3/2021.
//

import Foundation
import UIKit
import Firebase
import GoogleSignIn



class AppDelegates : NSObject, UIApplicationDelegate,GIDSignInDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         // Override point for customization after application launch.

         FirebaseApp.configure()
        
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        
         return true
     }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        if error != nil{
            print(error.localizedDescription)
            return
        }
        
        //get user token id and access id form google
        let UserCredential = GoogleAuthProvider.credential(withIDToken: user.authentication.idToken, accessToken: user.authentication.accessToken)
        
        Auth.auth().signIn(with: UserCredential){ result,error in
            if error != nil{
                print((error?.localizedDescription)!)
                return
            }
            
            //user login success
            
            NotificationCenter.default.post(name:Notification.Name("GOOGLE SIGNIN"), object: nil)
            
            print((result?.user.email)!)
            
            
        }

    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        //user log out
    }
    
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any])
      -> Bool {
      return GIDSignIn.sharedInstance().handle(url)
    }
}
