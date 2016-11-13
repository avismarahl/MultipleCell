//
//  TestTableViewCell.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import UIKit

class ChessTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var collectionView : UICollectionView!
    
    var chess : Chess!

    
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
        cell.chessImageView.image = UIImage(named:self.chess.imageNames[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.chess.imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

