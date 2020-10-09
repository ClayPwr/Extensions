//
//  String+Email.swift
//  StartupShow
//
//  Created by Ihor Pedan on 09.09.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension String {
  var isEmail: Bool {
      let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
  }
}
