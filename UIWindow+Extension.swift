//
//  UIWindow+Extension.swift
//  Ziksen
//
//  Created by Ihor Pedan on 20.03.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import UIKit

extension UIWindow {
  func switchRootTo(_ vc: UIViewController,
                    animated: Bool,
                    duration: TimeInterval = 0.3,
                    animationOptions: UIView.AnimationOptions = .transitionCrossDissolve,
                    completion: Command<Bool>?) {
    rootViewController = vc
    // Creates a transition animation.
    // Though `animations` is optional, the documentation tells us that it must not be nil. ¯\_(ツ)_/¯
    UIView.transition(with: self, duration: duration, options: animationOptions, animations: {}, completion:
      { completed in
        completion?.perform(with: completed)
    })
  }
}
