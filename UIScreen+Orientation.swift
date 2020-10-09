//
//  UIScreen+Orientation.swift
//  StartupShow_iOS
//
//  Created by Illia Khrypunov on 11/15/19.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension UIScreen {
  var isLandscape: Bool {
    return bounds.width > bounds.height
  }
  
  var isPortrait: Bool {
    return !isLandscape
  }
}
