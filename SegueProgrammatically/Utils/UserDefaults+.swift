//
//  UserDefaults.swift
//  RouterTraining
//
//  Created by 城野 on 2021/04/07.
//

import Foundation

extension UserDefaults {
    
  private var loginedKey: String { "logined" }
    
  var isLogined: Bool {
    set {
      self.setValue(newValue, forKey: loginedKey)
    }
    get {
      self.bool(forKey: loginedKey)
    }
  }
}
