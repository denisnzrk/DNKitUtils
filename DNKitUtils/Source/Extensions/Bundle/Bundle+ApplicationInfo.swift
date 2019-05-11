//
//  Bundle+ApplicationInfo.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 05/05/2019.
//

import class Foundation.NSBundle

public extension Bundle {
    var appIdentifier: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    var displayName: String {
        return infoDictionary?["CFBundleDisplayName"] as? String ?? ""
    }
    
    var version: String {
        return infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    var build: String {
        return infoDictionary?["CFBundleVersion"] as? String ?? ""
    }
}
