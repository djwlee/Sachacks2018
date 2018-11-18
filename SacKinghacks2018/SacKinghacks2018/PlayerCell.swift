//
//  PlayerCell.swift
//  SacKinghacks2018
//
//  Created by Jacob Morris on 11/17/18.
//  Copyright © 2018 David Lee. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var position: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
