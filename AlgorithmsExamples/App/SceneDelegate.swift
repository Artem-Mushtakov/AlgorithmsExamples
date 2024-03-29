//
//  SceneDelegate.swift
//  AlgorithmsExamples
//
//  Created by Artem Mushtakov on 21.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = BinarySearchViewController()
        self.window = window
        window.makeKeyAndVisible()
    }
}
