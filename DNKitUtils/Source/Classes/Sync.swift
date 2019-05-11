//
//  Sync.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 06/04/2019.
//

import Foundation

// MARK: Sync<T>
public final class Sync<T> {

    // MARK: Types
    public class Change<T> {
        public let oldValue: T
        public let newValue: T
        
        init(oldValue: T, newValue: T) {
            self.oldValue = oldValue
            self.newValue = newValue
        }
    }
    
    public var onChanged: Block<Change<T>>?
    
    private var underlyingValue: T {
        didSet {
            onChanged?(Change<T>(oldValue: oldValue, newValue: self.underlyingValue))
        }
    }
    
    private let rwLock = ReadWriteLock()
    
    public var value: T {
        get {
            return rwLock.withReaderLock { underlyingValue }
        }
        set {
            rwLock.withWriterLock { self.underlyingValue = newValue }
        }
    }
    
    public init(initialValue: T) {
        self.underlyingValue = initialValue
    }
    
    public convenience init(initialValue: T, onChanged: Block<Change<T>>? = nil) {
        self.init(initialValue: initialValue)
        self.onChanged = onChanged
    }
}
