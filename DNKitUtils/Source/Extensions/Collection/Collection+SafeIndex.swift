//
//  Collection+SafeIndex.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 05/05/2019.
//

import Foundation

public extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
