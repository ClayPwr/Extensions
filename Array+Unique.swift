//
//  Array+Unique.swift
//  StartupShow_iOS
//
//  Created by Ihor Pedan on 12.09.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension Array where Element: Hashable {
  var uniques: Array {
    var buffer = Array()
    var added = Set<Element>()
    for elem in self {
      if !added.contains(elem) {
        buffer.append(elem)
        added.insert(elem)
      }
    }
    return buffer
  }
}
