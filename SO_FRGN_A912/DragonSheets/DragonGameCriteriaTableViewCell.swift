//
//  DragonGameCriteriaTableViewCell.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/4/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit

class DragonGameCriteriaTableViewCell: UITableViewCell {
    @IBOutlet weak var firstLbl: UILabel!
    
    @IBOutlet weak var secandLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        firstLbl.adjustsFontSizeToFitWidth = true
        secandLbl.adjustsFontSizeToFitWidth = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
