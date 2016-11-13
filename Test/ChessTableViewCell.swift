//
//  TestTableViewCell.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import UIKit

class ChessTableViewCell: UITableViewCell,GameCellDisplayable {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var collectionView : UICollectionView!
    
    
    weak var delegate : ChessTableViewCellDelegate?
    
    static func nib() -> UINib {
        return UINib(nibName: "ChessTableViewCell", bundle: nil)
    }
    
    static func cellIdentifier() -> String {
        return "chessTableViewCell"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.register(ChessCollectionViewCell.nib(), forCellWithReuseIdentifier: ChessCollectionViewCell.cellIdentifier())
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension ChessTableViewCell : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChessCollectionViewCell.cellIdentifier(), for: indexPath) as! ChessCollectionViewCell
        self.delegate?.chessTableViewCell(chessTableViewCell: self, configure: cell, at: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let delegate = self.delegate else {
            return 0
        }
        return delegate.numberOfItemsInCollectionViewInChessTableViewCell(chessTableViewCell: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.chessTableViewCell(chessTableViewCell: self, didSelectItemAt: indexPath)
    }
}

protocol ChessTableViewCellDelegate : class {
    func numberOfItemsInCollectionViewInChessTableViewCell(chessTableViewCell : ChessTableViewCell) -> Int
    func chessTableViewCell(chessTableViewCell : ChessTableViewCell, configure chessCollectionViewCell : ChessCollectionViewCell, at indexPath : IndexPath)
    func chessTableViewCell(chessTableViewCell : ChessTableViewCell, didSelectItemAt indexPath : IndexPath)
}



protocol GameCellDisplayable {
    static func nib() -> UINib
    static func cellIdentifier() -> String
}
