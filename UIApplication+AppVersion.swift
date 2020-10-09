//
//  UIApplication+AppVersion.swift
//  Ziksen
//
//  Created by Ihor Pedan on 30.03.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import UIKit

extension UIApplication {
  static var appVersion: String? {
    return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
  }
}

