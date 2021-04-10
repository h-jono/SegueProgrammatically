//
//  Storyboard+.swift
//  RouterTraining
//
//  Created by 城野 on 2021/04/07.
//

import UIKit

extension UIStoryboard {
    static var firstViewController: FirstViewController {
        UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
    }
    
    static var secondViewController: SecondViewController {
        UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
    }
    
    static var thirdViewController: ThirdViewController {
        UIStoryboard.init(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
    }
    
    
}
