//
//  RealmCollections+Swift.swift
//  Ziksen
//
//  Created by Ihor Pedan on 19.03.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation
import RealmSwift

extension List {
  var array: [Element] {
    map { $0 }
  }
}

extension Results {
  var array: [Element] {
    map { $0 }
  }
}
