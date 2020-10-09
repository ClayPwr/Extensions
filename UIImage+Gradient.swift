//
//  UIImage+Gradient.swift
//  Ziksen
//
//  Created by Anton Hoang on 3/26/20.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import UIKit

extension UIImage {
  
  func tintedWithLinearGradientColors(colorsArr: [CGColor]) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(size, false, scale);
    guard let context = UIGraphicsGetCurrentContext() else {
      return UIImage()
    }
    context.translateBy(x: 0, y: size.height)
    context.scaleBy(x: 1, y: -1)
    context.setBlendMode(.normal)
    
    let rect = CGRect.init(x: 0, y: 0, width: size.width, height: size.height)
    
    // Create gradient
    let colors = colorsArr as CFArray
    let space = CGColorSpaceCreateDeviceRGB()
    let gradient = CGGradient(colorsSpace: space, colors: colors, locations: nil)
    
    // Apply gradient
    context.clip(to: rect, mask: cgImage!)
    context.drawLinearGradient(gradient!,
                               start: CGPoint(x: 0.5, y: 0),
                               end: CGPoint(x: 0.5, y: size.height),
                               options: .drawsAfterEndLocation)
    let gradientImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return gradientImage!
  }
}
