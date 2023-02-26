//
//  SceneDelegate.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 21.02.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.rootViewController = StatisticsViewContoller()
        window?.makeKeyAndVisible()
    }

}

