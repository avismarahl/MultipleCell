//
//  TennisTableViewCell.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import UIKit

class TennisTableViewCell: UITableViewCell,GameCellDisplayable {

    
    @IBOutlet weak var label : UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: "TennisTableViewCell", bundle: nil)
    }
    
    static func cellIdentifier() -> String {
        return "tennisTableViewCell"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
