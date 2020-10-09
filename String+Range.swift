//
//  String+Range.swift
//  Ziksen
//
//  Created by Anton Hoang on 15.04.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation

extension String {
  func containsNumber() -> Bool {
    let range = self.rangeOfCharacter(from: .decimalDigits)
    return range != nil
  }
}
