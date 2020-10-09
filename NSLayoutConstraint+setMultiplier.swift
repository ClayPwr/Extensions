//
//  NSLayoutConstraint+setMultiplier.swift
//  StartupShow_iOS
//
//  Created by Illia Khrypunov on 11/12/19.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension NSLayoutConstraint {
  func setMultiplier(multiplier: CGFloat) -> NSLayoutConstraint {
    NSLayoutConstraint.deactivate([self])
    
    let newConstraint = NSLayoutConstraint(
      item: firstItem as Any,
      attribute: firstAttribute,
      relatedBy: relation,
      toItem: secondItem,
      attribute: secondAttribute,
      multiplier: multiplier,
      constant: constant)
    
    newConstraint.priority = priority
    newConstraint.shouldBeArchived = self.shouldBeArchived
    newConstraint.identifier = self.identifier
    
    NSLayoutConstraint.activate([newConstraint])
    return newConstraint
  }
}
