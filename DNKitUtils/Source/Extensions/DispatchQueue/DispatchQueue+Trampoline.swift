//
//  DispatchQueue+Trampoline.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 11/05/2019.
//

import Foundation



public extension DispatchQueue {
    static func trampoline(_ execute: @escaping () -> Void) {
        if Thread.isMainThread {
            execute()
        } else {
            DispatchQueue.main.async(execute: execute)
        }
    }
}
