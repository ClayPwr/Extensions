//
//  UIApplication+appVersion.swift
//  StartupShow_iOS
//
//  Created by Illia Khrypunov on 11/1/19.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension UIApplication {
   static var appVersion: String? {
       return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
   }
}
