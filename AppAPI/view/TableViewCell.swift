//
//  TableViewCell.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/11/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var daylabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var locationTwoLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
