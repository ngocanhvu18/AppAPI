//
//  String + Extension.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/12/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import Foundation
extension String {
    
    func getStringFirst () -> (String, String) {
        var before: String = "Near by"
        var after: String = self
        if self.contains("of") {
            let range = self.range(of:"of")
            let index = range!.upperBound
            after = String(self[index...])
            before = String(self[...index])
        }
        return (before, after)
    }
}
