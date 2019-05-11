//
//  ReadWriteLock.swift
//  ndkitUtils
//
//  Created by NAZARENKO Denis on 31/03/2019.
//

import Foundation

public final class ReadWriteLock {
    
    private let rwlock: UnsafeMutablePointer<pthread_rwlock_t>

    public init() {
        rwlock = UnsafeMutablePointer.allocate(capacity: 1)
        pthread_rwlock_init(rwlock, nil)
    }
    
    deinit {
        pthread_rwlock_destroy(rwlock)
        rwlock.deallocate()
    }
    
    public func lockRead() {
        pthread_rwlock_rdlock(rwlock)
    }

    public func lockWrite() {
        pthread_rwlock_wrlock(rwlock)
    }

    public func unlock() {
        pthread_rwlock_unlock(rwlock)
    }
}

public extension ReadWriteLock {

    @inlinable
    func withReaderLock<T>(_ body: () throws -> T) rethrows -> T {
        self.lockRead()
        defer { self.unlock() }
        return try body()
    }
    
    @inlinable
    func withWriterLock<T>(_ body: () throws -> T) rethrows -> T {
        self.lockWrite()
        defer { self.unlock() }
        return try body()
    }
    
    @inlinable
    func withReaderLockVoid(_ body: () throws -> Void) rethrows {
        try self.withReaderLock(body)
    }
    
    @inlinable
    func withWriterLockVoid(_ body: () throws -> Void) rethrows {
        try self.withWriterLock(body)
    }
}
