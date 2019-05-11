//
//  Optional+.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 02/05/2019.
//

import Foundation

extension Optional {
    /// Returns error if optional is nil
    ///
    /// - Parameter errorExpression: compute error
    /// - Returns: Wrapped value
    /// - Throws: Any Error
    func orThrow(_ errorExpression: @autoclosure () -> Error) throws -> Wrapped {
        guard let value = self else { throw errorExpression() }
        
        return value
    }
}

extension Optional where Wrapped: Collection {
    var isNilOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}

extension Optional where Wrapped == UIView {
    mutating func get<T: UIView>(orSet expression: @autoclosure () -> T) -> T {
        guard let view = self as? T else {
            let newView = expression()
            self = newView
            return newView
        }
        
        return view
    }
}
