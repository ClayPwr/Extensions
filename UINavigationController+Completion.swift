//
//  UINavigationController+Completion.swift
//  StartupShow
//
//  Created by Ihor Pedan on 22.07.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import UIKit

extension UINavigationController {
  public func pushViewController(viewController: UIViewController,
                                 animated: Bool,
                                 completion: (() -> Void)?) {
    CATransaction.begin()
    CATransaction.setCompletionBlock(completion)
    pushViewController(viewController, animated: animated)
    CATransaction.commit()
  }
  
  public func popViewController(animated: Bool,
                                completion: (() -> Void)?) {
    CATransaction.begin()
    CATransaction.setCompletionBlock(completion)
    popViewController(animated: animated)
    CATransaction.commit()
  }
}
