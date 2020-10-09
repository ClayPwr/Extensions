//
//  UIImage+Tint.swift
//  StartupShow_iOS
//
//  Created by Ihor Pedan on 19.09.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import UIKit.UIImage

extension UIImage {
  func imageWithColor(color1: UIColor) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
    color1.setFill()
    
    let context = UIGraphicsGetCurrentContext()
    context?.translateBy(x: 0, y: self.size.height)
    context?.scaleBy(x: 1.0, y: -1.0)
    context?.setBlendMode(CGBlendMode.normal)
    
    let rect = CGRect(origin: .zero, size: CGSize(width: self.size.width, height: self.size.height))
    context?.clip(to: rect, mask: self.cgImage!)
    context?.fill(rect)
    
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return newImage!
  }
  
  func resized(_ newSize: CGSize) -> UIImage {
    UIGraphicsBeginImageContext(newSize)
    draw(in: CGRect(origin: .zero, size: newSize))
    let new = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return new!
  }
}
