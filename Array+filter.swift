//
//  Array+filter.swift
//  Ziksen
//
//  Created by Anton Hoang on 26.06.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation

extension Array {
  func filterDuplicates(includeElement: (_ lhs: Element, _ rhs: Element) -> Bool) -> [Element] {
    var results = [Element]()
    forEach { element in
      let existingElements = results.filter {
        return includeElement(element, $0)
      }
      if existingElements.count == 0 {
        results.append(element)
      }
    }
    return results
  }
}
