//
//  SceneDelegate.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 29/06/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        
        let accountVC = AccountViewController(nibName: "AccountViewController", 
                                              bundle: nil)
        accountVC.viewModel = AccountViewModel(shoudUseLocation: true, model: AccountModel(instruction: ""))
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = scene
        window?.rootViewController = accountVC
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}


}

