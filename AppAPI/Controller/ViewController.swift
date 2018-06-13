//
//  ViewController.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/11/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    
        var featureObjcet: [Feature] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        DataService.shared.getDataAPI {[unowned self] (featureData) in
            self.featureObjcet = featureData
            self.tableView.reloadData()
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

