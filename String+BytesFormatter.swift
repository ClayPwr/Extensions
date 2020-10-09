//
//  String+BytesFormatter.swift
//  StartupShow
//
//  Created by Ihor Pedan on 30.08.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension String {
  static func stringFromBytes(_ bytes: Int64) -> String {
    let bcf = ByteCountFormatter()
    bcf.allowedUnits = [.useGB, .useMB]
    bcf.countStyle = .file
    return bcf.string(fromByteCount: bytes)
  }
}
