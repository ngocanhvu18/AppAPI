//
//  DataService.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/11/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit
typealias DICT = Dictionary<AnyHashable, Any>

class Feature {
    var mag: Double
    var place: String
    var time: TimeInterval
    var updated: TimeInterval
  
    init?(dictionary: DICT) {
        guard let properties = dictionary["properties"] as? DICT else { return nil }
        guard let mag = properties["mag"] as? Double else { return nil }
        guard let place = properties["place"] as? String else { return nil }
        guard let time = properties["time"] as? TimeInterval else { return nil }
        guard let updated = properties["updated"] as? TimeInterval else { return nil }
       
        self.mag = mag
        self.place = place
        self.time = time
        self.updated = updated
        
    }
}


