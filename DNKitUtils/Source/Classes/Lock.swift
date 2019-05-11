//
//  Lock.swift
//  ndkitUtils
//
//  Created by NAZARENKO Denis on 31/03/2019.
//

import Foundation

public final class Lock {
    private let mutex: UnsafeMutablePointer<pthread_mutex_t>
    
    public init() {
        mutex = UnsafeMutablePointer.allocate(capacity: 1)
        pthread_mutex_init(mutex, nil)
    }
    
    deinit {
        pthread_mutex_destroy(mutex)
        self.mutex.deallocate()
    }

    public func lock() {
        pthread_mutex_lock(mutex)
    }

    public func unlock() {
        pthread_mutex_unlock(mutex)
    }
}

public extension Lock {

    @inlinable
    func withLock<T>(_ body: () throws -> T) rethrows -> T {
        lock()
        defer { unlock() }
        return try body()
    }
    
    @inlinable
    func withLockVoid(_ body: () throws -> Void) rethrows {
        try self.withLock(body)
    }
}
