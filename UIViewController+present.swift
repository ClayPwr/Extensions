//
//  UIViewController+present.swift
//  Ziksen
//
//  Created by Anton Hoang on 21.06.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import UIKit

extension UIViewController {
  func present(_ style: UIModalPresentationStyle, viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
    viewController.modalPresentationStyle = style
    present(viewController, animated: animated, completion: completion)
  }
}
