import Foundation

extension URL {
  enum Filestatus {
    case isFile
    case isDirectory
    case isNotExist
  }
  
  var filestatus: Filestatus {
    let filestatus: Filestatus
    var isDir: ObjCBool = false
    if FileManager.default.fileExists(atPath: self.path, isDirectory: &isDir) {
      if isDir.boolValue {
        // file exists and is a directory
        filestatus = .isDirectory
      } else {
        // file exists and is not a directory
        filestatus = .isFile
      }
    } else {
      // file does not exist
      filestatus = .isNotExist
    }
    return filestatus
  }
}
