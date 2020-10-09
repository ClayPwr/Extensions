//
//  Locale+language.swift
//  Ziksen
//
//  Created by Anton Hoang on 30.07.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation

extension Locale {
  static var preferredLanguageCode: String {
    let defaultLanguage = "fr"
    let preferredLanguage = preferredLanguages.first ?? defaultLanguage
    return Locale(identifier: preferredLanguage).languageCode ?? defaultLanguage
  }
  
  static var preferredLanguageCodes: [String] {
    return Locale.preferredLanguages.compactMap({Locale(identifier: $0).languageCode})
  }
}
