//
//  UserDefaults+Local.swift
//  Ziksen
//
//  Created by Ihor Pedan on 20.03.2020.
//  Copyright © 2020 Ziksen. All rights reserved.
//

import Foundation

extension UserDefaults {
  enum Local {
    private enum Keys: String {
      case onboardingWasPresented
      case hasRunBefore
      case recentlyPlayedTracksOrder
      case isCellularAllowed
      case userLogin
      case userMsisdn
      case firstLaunch
      case parameteresForFirstLaunch
      case userID
      case autologinToken
      case selectedTrack
      case firstTimeLaunchForceConnection
      case tabBarSelectedIndex
      case isDownloadedTracksExist
    }
    
    private static var userDefaults: UserDefaults {
      return UserDefaults.standard
    }
    
    static var onboardingWasPresented: Bool {
      get { return userDefaults.value(forKey: Keys.onboardingWasPresented.rawValue) as? Bool ?? false }
      set { userDefaults.setValue(newValue, forKey: Keys.onboardingWasPresented.rawValue) }
    }
    
    static var hasRunBefore: Bool {
      get { return userDefaults.value(forKey: Keys.hasRunBefore.rawValue) as? Bool ?? false}
      set { userDefaults.setValue(newValue, forKey: Keys.hasRunBefore.rawValue) }
    }
    
    static var recentlyPlayedTracksOrder: [String: Int] {
      get { return userDefaults.value(forKey: Keys.recentlyPlayedTracksOrder.rawValue) as? [String: Int] ?? [:]}
      set { userDefaults.setValue(newValue, forKey: Keys.recentlyPlayedTracksOrder.rawValue) }
    }
    
    static var isCellularAllowed: Bool {
      get { return userDefaults.value(forKey: Keys.isCellularAllowed.rawValue) as? Bool ?? false}
      set {
        userDefaults.setValue(newValue, forKey: Keys.isCellularAllowed.rawValue)
        NotificationCenter.default.post(name: .ziksenSettingsCellularAccessChanged, object: nil)
      }
    }
    
    static var userLogin: String? {
      get { return userDefaults.value(forKey: Keys.userLogin.rawValue) as? String }
      set { userDefaults.setValue(newValue, forKey: Keys.userLogin.rawValue) }
    }
    
    static var userMsisdn: String? {
      get { return userDefaults.value(forKey: Keys.userMsisdn.rawValue) as? String }
      set { userDefaults.setValue(newValue, forKey: Keys.userMsisdn.rawValue) }
    }
    
    static var firstLaunch: Bool {
      get { return userDefaults.value(forKey: Keys.firstLaunch.rawValue) as? Bool ?? false }
      set {
        userDefaults.setValue(newValue, forKey: Keys.firstLaunch.rawValue)
        NotificationCenter.default.post(name: .firstLaunch, object: nil)
      }
    }
    
    static var parameteresForFirstLaunch: Bool {
      get { return userDefaults.value(forKey: Keys.parameteresForFirstLaunch.rawValue) as? Bool ?? false }
      set {
        userDefaults.setValue(newValue, forKey: Keys.parameteresForFirstLaunch.rawValue)
        NotificationCenter.default.post(name: .parameteresForFirstLaunch, object: nil)
      }
    }
    
    static var userID: Int? {
      get { return userDefaults.value(forKey: Keys.userMsisdn.rawValue) as? Int }
      set { userDefaults.setValue(newValue, forKey: Keys.userMsisdn.rawValue) }
    }
    
    static var autologinToken: String? {
      get { return userDefaults.value(forKey: Keys.autologinToken.rawValue) as? String }
      set { userDefaults.setValue(newValue, forKey: Keys.autologinToken.rawValue) }
    }
    
    static var alreadyLaunchForceConnection: Bool {
      get { return userDefaults.value(forKey: Keys.firstTimeLaunchForceConnection.rawValue) as? Bool ?? false }
      set { userDefaults.setValue(newValue, forKey: Keys.firstTimeLaunchForceConnection.rawValue) }
    }
    
    static var selectedTrack: String? {
      get { return userDefaults.value(forKey: Keys.selectedTrack.rawValue) as? String }
      set { userDefaults.setValue(newValue, forKey: Keys.selectedTrack.rawValue) }
    }
  
    static var tabBarSelectedIndex: Int {
      get { return userDefaults.value(forKey: Keys.tabBarSelectedIndex.rawValue) as? Int ?? 0 }
      set { userDefaults.setValue(newValue, forKey: Keys.tabBarSelectedIndex.rawValue) }
    }
    
    static var isDownloadedTracksExist: Bool {
      get { return userDefaults.value(forKey: Keys.isDownloadedTracksExist.rawValue) as? Bool ?? false }
      set { userDefaults.setValue(newValue, forKey: Keys.isDownloadedTracksExist.rawValue) }
    }
  }
}
