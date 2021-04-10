//
//  Router.swift
//  RouterTraining
//
//  Created by 城野 on 2021/04/06.
//

import UIKit

final class Router {
    
    static let shared: Router = .init()
    private init() {}
    
    private (set) var window: UIWindow?
    
    // 起動直後の画面を表示する
    func showRoot(window: UIWindow?) {
        
        // 初期画面の切替
        if !UserDefaults.standard.isLogined {
            let vc = FirstViewController.makeFromStoryboard()
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav
        } else {
            let vc = SecondViewController.makeFromStoryboard()
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav
        }
        window?.makeKeyAndVisible() // これを呼ぶたびにwindowを立ち上げ直す
        self.window = window
    }
    
    func showFirst(from: UIViewController) {
        let vc = FirstViewController.makeFromStoryboard()
        show(from: from, next: vc)
    }
    
    func showSecond(from: UIViewController) {
        let vc = SecondViewController.makeFromStoryboard()
        show(from: from, next: vc)
    }
    
    func showThird(from: UIViewController, countModel: CountModel) {
        let vc = ThirdViewController.makeFromStoryboard(countModel: countModel)
        show(from: from, next: vc)
    }
    
    func showReStart() {
        
        UserDefaults.standard.isLogined = [true, false].randomElement()!
        // ルート画面
        showRoot(window: window)
    }
}

private extension Router {
    func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(next, animated: animated)
        } else {
            from.present(next, animated: animated, completion: nil)
        }
    }
}
