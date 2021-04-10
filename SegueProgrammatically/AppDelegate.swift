//
//  AppDelegate.swift
//  RouterTraining
//
//  Created by 城野 on 2021/04/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        let vc = UIViewController()
//        vc.view.backgroundColor = .red
//        window.rootViewController = vc
//        window.makeKeyAndVisible()
//        self.window = window
        
        // 上記のコードは、RouterクラスのshowRootで制御
        Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
        
        return true
    }

}

