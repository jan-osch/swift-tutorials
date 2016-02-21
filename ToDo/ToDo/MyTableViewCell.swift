//
//  MyTableViewCell.swift
//  ToDo
//
//  Created by Janusz Grzesik on 21.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet var myCustomTitle: UILabel!
    @IBOutlet var myCustomDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
