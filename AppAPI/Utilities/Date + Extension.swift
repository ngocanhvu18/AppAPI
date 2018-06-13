//
//  Time + Extension.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/12/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit
extension TimeInterval {
    func getFormatterDate() -> String{
        let formater = DateFormatter()
        formater.dateStyle = .medium
        formater.dateFormat = "MMMM dd, YYYY"
        formater.locale = Locale(identifier: "en-US")
        let date = formater.string(from: Date(timeIntervalSince1970: self/1000))
        return date
        
    }
}

extension TimeInterval {
    func getFormatterTime() -> String {
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        timeFormatter.dateFormat = "hh:00 a"
        timeFormatter.amSymbol = "AM"
        timeFormatter.pmSymbol = "PM"
        
        timeFormatter.locale = Locale(identifier: "en-US")
        let time = timeFormatter.string(from: Date(timeIntervalSince1970: self))
        return time
    }
}
