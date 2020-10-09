//
//  UILabel+Init.swift
//  StartupShow_iOS
//
//  Created by Ihor Pedan on 19.07.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import UIKit

extension UILabel {
  static func labelWith(text: String? = nil,
                        font: UIFont = .systemFont(ofSize: 15),
                        color: UIColor = .black,
                        numberOfLines: Int = 1,
                        alignment: NSTextAlignment = .left) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = font
    label.textColor = color
    label.text = text
    label.numberOfLines = numberOfLines
    label.textAlignment = alignment
    return label
  }
}
