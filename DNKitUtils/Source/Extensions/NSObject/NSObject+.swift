//
//  NSObject+.swift
//  ndkitUtils
//
//  Created by NAZARENKO Denis on 31/03/2019.
//

import Foundation.NSObject

public extension NSObject {
    static func nameOfClass() -> String {
        guard let className = NSStringFromClass(self)
                                .components(separatedBy: ".")
                                .last
        else { fatalError("🤦🏼‍♂️")}
        
        return className
    }
}
