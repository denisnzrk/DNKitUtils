//
//  Equatable+isAny.swift
//  ndkitUtils
//
//  Created by NAZARENKO Denis on 31/03/2019.
//

import Foundation

public extension Equatable {
    /// Returns true if object is equal to any of candidates and false in another case.
    ///
    /// - Parameter candidates: Equatable values of `Self.Type` type
    /// - Returns: Bool
    func isAny(of candidates: Self...) -> Bool {
        return candidates.contains(self)
    }
}
