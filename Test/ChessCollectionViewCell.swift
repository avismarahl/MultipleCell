//
//  ChessCollectionViewCell.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import UIKit

class ChessCollectionViewCell: UICollectionViewCell {
    
    static func nib() -> UINib {
        return UINib(nibName: "ChessCollectionViewCell", bundle: nil)
    }
    
    static func cellIdentifier() -> String {
        return "chessCollectionViewCell"
    }

    @IBOutlet weak var chessImageView : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
