//
//  AppDelegate.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit
import FirebaseAuth
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Firebase
        FirebaseApp.configure()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = SplashRouter.creteModule()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

