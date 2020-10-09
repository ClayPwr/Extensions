import Foundation

extension String {
  var localized: String { NSLocalizedString(self, comment: "") }
  var localizedUpper: String { NSLocalizedString(self, comment: "").uppercased() }
}
