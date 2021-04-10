//
//  SecondViewController.swift
//  RouterTraining
//
//  Created by 城野 on 2021/04/07.
//

import UIKit

final class SecondViewController: UIViewController {
    
    static func makeFromStoryboard() -> SecondViewController {
        let vc = UIStoryboard.secondViewController
        return vc
    }
    
    private var countModel = CountModel.init(count: 0)
    
    @IBOutlet private weak var countLabel: UILabel! {
        didSet {
            countLabel.text = countModel.count.description
        }
    }
    @IBOutlet private weak var countUpButton: UIButton! {
        didSet {
            countUpButton.addTarget(self, action: #selector(tapNextCountUpButton(_:)), for: .touchUpInside)
        }
    }
    @objc func tapNextCountUpButton(_ sender: UIResponder) {
        countModel.count += 1
        countLabel.text = countModel.count.description
    }
    
    @IBOutlet private weak var  nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    
    @objc func tapNextButton(_ sender: UIResponder) {
        Router.shared.showThird(from: self, countModel: countModel)
    }
}


