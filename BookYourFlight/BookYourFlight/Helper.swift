//
//  Helper.swift
//  BookYourFlight
//
//  Created by MAC on 12/02/24.
//

import Foundation
class Helper {
    static func formatDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM, EEE"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.string(from: date)
    }

}
