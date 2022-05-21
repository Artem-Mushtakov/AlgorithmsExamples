//
//  AppDelegate.swift
//  AlgorithmsExamples
//
//  Created by Artem Mushtakov on 21.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow()
            window?.rootViewController = ViewController()
            window?.makeKeyAndVisible()
            return true
        }
}
