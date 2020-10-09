//
//  FileManager+Caches.swift
//  StartupShow_iOS
//
//  Created by Ihor Pedan on 04.09.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension FileManager {
  func directoryPathFor(_ cacheType: CacheType) -> URL {
    do {
      let pathUrl = try url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
      let directoryURL = pathUrl.appendingPathComponent(cacheType.rawValue)
      let status = directoryURL.filestatus
      if status == .isNotExist {
        try createDirectory(at: directoryURL,
                            withIntermediateDirectories: true,
                            attributes: nil)
      }
      return directoryURL
    } catch {
      fatalError("Cache couldn't reach directory \(cacheType.rawValue), error: \(error.localizedDescription) \n")
    }
  }
}
