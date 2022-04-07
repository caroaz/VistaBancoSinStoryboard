//
//  AppDelegate.swift
//  VistaBancoSinStoryboard
//
//  Created by Mobdev on 06-04-22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds
        )
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        window?.rootViewController = ViewController()
        return true
    }
}

