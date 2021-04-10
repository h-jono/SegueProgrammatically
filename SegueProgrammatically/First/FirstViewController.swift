//
//  FirstViewController.swift
//  RouterTraining
//
//  Created by 城野 on 2021/04/06.
//

import UIKit

final class FirstViewController: UIViewController {
    
    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard.firstViewController
        return vc
    }
    
    @IBOutlet private weak var nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    
    @objc func tapNextButton(_ sender: UIResponder) {
        Router.shared.showSecond(from: self)
    }
}
