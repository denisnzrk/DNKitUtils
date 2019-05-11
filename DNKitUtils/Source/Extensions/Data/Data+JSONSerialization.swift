//
//  Data+JSONSerialization.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 03/05/2019.
//

import Foundation.NSData

public extension Data {
    func toSerializedAny(options: JSONSerialization.ReadingOptions = []) -> Any? {
        return try? JSONSerialization.jsonObject(with: self, options: options)
    }
    
    func toSerializedDictionary(options: JSONSerialization.ReadingOptions = []) -> [String: Any]? {
        return try? JSONSerialization.jsonObject(with: self, options: options) as? [String: Any]
    }
}
