//
//  ViewContrller + ExtensionTabelView.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/12/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return featureObjcet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.scoreLabel.text = String(featureObjcet[indexPath.row].mag)
        cell.daylabel.text = String(featureObjcet[indexPath.row].updated.getFormatterDate())
        cell.locationLabel.text = featureObjcet[indexPath.row].place.getStringFirst().0
        cell.locationTwoLabel.text = featureObjcet[indexPath.row].place.getStringFirst().1
        cell.timeLabel.text = String(featureObjcet[indexPath.row].time.getFormatterTime())
        return cell
    }
    
}
