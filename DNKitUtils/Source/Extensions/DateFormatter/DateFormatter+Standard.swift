//
//  DateFormatter+Standard.swift
//  DNKitUtils
//
//  Created by NAZARENKO Denis on 03/05/2019.
//

import class Foundation.NSDateFormatter

public extension DateFormatter {
    static var iso: DateFormatter {
        let locale = Locale(identifier: "en_US_POSIX")
        let timeZone = TimeZone(identifier: "Europe/Moscow")
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.timeZone = timeZone
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SS"
        
        return formatter
    }
    
    static var dateOnly: DateFormatter {
        let locale = Locale(identifier: "en_US_POSIX")
        let timeZone = TimeZone(identifier: "Europe/Moscow")
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.timeZone = timeZone
        formatter.dateFormat = "yyyy-MM-dd"
        
        return formatter
    }
}
