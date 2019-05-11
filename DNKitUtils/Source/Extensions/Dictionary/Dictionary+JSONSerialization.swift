//
//  Dictionary+.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 03/05/2019.
//

import Foundation.NSDictionary

public extension Dictionary where Key == String, Value == Any {
    var toData: Data? {
        return try? JSONSerialization.data(withJSONObject: self as Any)
    }
}
