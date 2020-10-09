//
//  UserDefaults+LocalPreferences.swift
//  StartupShow
//
//  Created by Ihor Pedan on 26.07.2019.
//  Copyright © 2019 Ihor Pedan. All rights reserved.
//

import Foundation

extension UserDefaults {
  enum Local {
    private enum Keys: String {
      case settings
      case lastService
      case hasRunBefore
      case mainColorHex
      case logoSmall
      case logoLarge
      case externalLink
      case serviceName
      case loginWithLinks
      case m3uLink
      case epgLink
    }
    
    private static var userDefaults: UserDefaults {
      return UserDefaults.standard
    }
    
    static var lastService: String? {
      get { return userDefaults.string(forKey: Keys.lastService.rawValue) }
      set { userDefaults.setValue(newValue, forKey: Keys.lastService.rawValue) }
    }
    
    static var hasRunBefore: Bool? {
      get { return userDefaults.value(forKey: Keys.hasRunBefore.rawValue) as? Bool}
      set { userDefaults.setValue(newValue, forKey: Keys.hasRunBefore.rawValue) }
    }
    
    static var settings: Settings? {
      get {
        guard let dictionary = userDefaults.value(forKey: Keys.settings.rawValue) else {
          return nil
        }
        do {
          let data = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
          let settings = try JSONDecoder().decode(Settings.self, from: data)
          return settings
        } catch {
          fatalError()
        }
      }
      set {
        do {
          guard let settings = newValue else {
            userDefaults.set(nil, forKey: Keys.settings.rawValue)
            return
          }
          let data = try JSONEncoder().encode(settings)
          let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
          userDefaults.set(dictionary, forKey: Keys.settings.rawValue)
        } catch {
          fatalError()
        }
      }
    }

    static var mainColorHex: String? {
      get { return userDefaults.string(forKey: Keys.mainColorHex.rawValue) }
      set { userDefaults.setValue(newValue, forKey: Keys.mainColorHex.rawValue) }
    }
    
    static var serviceName: String? {
      get { return userDefaults.string(forKey: Keys.serviceName.rawValue) }
      set { userDefaults.setValue(newValue, forKey: Keys.serviceName.rawValue) }
    }
    
    static var logoSmall: URL? {
      get { return userDefaults.url(forKey: Keys.logoSmall.rawValue) }
      set { userDefaults.set(newValue, forKey: Keys.logoSmall.rawValue) }
    }
    
    static var logoLarge: URL? {
      get { return userDefaults.url(forKey: Keys.logoLarge.rawValue) }
      set { userDefaults.set(newValue, forKey: Keys.logoLarge.rawValue) }
    }
    
    static var externalLink: URL? {
      get { return userDefaults.url(forKey: Keys.externalLink.rawValue) }
      set { userDefaults.set(newValue, forKey: Keys.externalLink.rawValue) }
    }
    
    static var loginWithLinks: Bool? {
      get { return userDefaults.value(forKey: Keys.loginWithLinks.rawValue) as? Bool}
      set { userDefaults.setValue(newValue, forKey: Keys.loginWithLinks.rawValue) }
    }
    
    static var m3uLink: URL? {
      get { return userDefaults.url(forKey: Keys.m3uLink.rawValue) }
      set { userDefaults.set(newValue, forKey: Keys.m3uLink.rawValue) }
    }

    static var epgLink: URL? {
      get { return userDefaults.url(forKey: Keys.epgLink.rawValue) }
      set { userDefaults.set(newValue, forKey: Keys.epgLink.rawValue) }
    }
  }
}
