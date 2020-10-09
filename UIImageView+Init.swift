//
//  UIImageView+Init.swift
//  StartupShow_iOS
//
//  Created by Ihor Pedan on 19.07.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import UIKit

extension UIImageView {
  static func imageViewWith(image: UIImage? = nil, contentMode: UIView.ContentMode = .scaleAspectFit) -> UIImageView {
    let iv = UIImageView(image: image)
    iv.translatesAutoresizingMaskIntoConstraints = false
    iv.contentMode = contentMode
    iv.clipsToBounds = true
    return iv
  }
}
