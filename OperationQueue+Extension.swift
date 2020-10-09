//
//  OperationQueue+Extension.swift
//  Ziksen
//
//  Created by Ihor Pedan on 06.03.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation

extension OperationQueue {
  static var networkingQueue: OperationQueue = {
    let opQueue = OperationQueue()
    opQueue.maxConcurrentOperationCount = 3
    opQueue.qualityOfService = QualityOfService.utility
    return opQueue
  }()
  
  static var applicationQueue: OperationQueue = {
    let opQueue = OperationQueue()
    opQueue.maxConcurrentOperationCount = 10
    opQueue.qualityOfService = QualityOfService.userInitiated
    return opQueue
  }()
  
  static var downloadQueue: OperationQueue = {
    let opQueue = OperationQueue()
    opQueue.maxConcurrentOperationCount = 10
    opQueue.qualityOfService = QualityOfService.utility
    return opQueue
  }()
}
