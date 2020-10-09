//
//  String+Attribute.swift
//  Ziksen
//
//  Created by Anton Hoang on 09.04.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
  static func changeColorTextWhileSearching(fullRangeText: String, inputString: String, inputStringColor: UIColor, fullRangeTextColor: UIColor) -> NSMutableAttributedString {
      let range = (fullRangeText as NSString).range(of: inputString, options: .caseInsensitive)
      let attributedString = NSMutableAttributedString(string:fullRangeText)
      attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: fullRangeTextColor, range: NSRange(location: 0, length: fullRangeText.count))
      attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: inputStringColor, range: range)
      return attributedString
  }
}
