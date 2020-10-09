//
//  String+Subscript.swift
//  Ziksen
//
//  Created by Ihor Pedan on 23.03.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation

extension String {
  subscript(_ range: CountableRange<Int>) -> String {
    let start = index(startIndex, offsetBy: max(0, range.lowerBound))
    let end = index(start, offsetBy: min(self.count - range.lowerBound,
                                         range.upperBound - range.lowerBound))
    return String(self[start..<end])
  }
  
  subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
    let start = index(startIndex, offsetBy: max(0, range.lowerBound))
    return String(self[start...])
  }
  
  func deletingPrefix(_ prefix: String) -> String {
    guard self.hasPrefix(prefix) else { return self}
    return String(self.dropFirst(prefix.count))
  }
}
