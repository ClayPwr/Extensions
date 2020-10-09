//
//  UIView+Snapshot.swift
//  StartupShow
//
//  Created by Ihor Pedan on 22.07.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import UIKit

extension UIView {
  func snapshot() -> UIImage {
    UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
    drawHierarchy(in: bounds, afterScreenUpdates: true)
    let result = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return result!
  }
}
