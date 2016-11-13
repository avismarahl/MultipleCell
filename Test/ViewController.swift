//
//  ViewController.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView : UITableView!
    
    var feedDisplayable = [FeedDisplayable]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.populateData()
        self.setupTableView()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func populateData() {
        let chessModels = Chess.chessModels() as [FeedDisplayable]
        let golfModels = Golf.golfModels() as [FeedDisplayable]
        let tennisModels = Tennis.tennisModels() as [FeedDisplayable]
        
        self.feedDisplayable = chessModels + golfModels + tennisModels
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTableView() {
        self.tableView.register(ChessTableViewCell.nib(), forCellReuseIdentifier: ChessTableViewCell.cellIdentifier())
        self.tableView.register(TennisTableViewCell.nib(), forCellReuseIdentifier: TennisTableViewCell.cellIdentifier())
        self.tableView.register(GolfTableViewCell.nib(), forCellReuseIdentifier: GolfTableViewCell.cellIdentifier())
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.estimatedRowHeight = 50
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.reloadData()
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feedDisplayable = self.feedDisplayable[indexPath.row]
        switch feedDisplayable.type {
        case .chess:
            let chess = feedDisplayable as! Chess
            let cell = tableView.dequeueReusableCell(withIdentifier: ChessTableViewCell.cellIdentifier()) as! ChessTableViewCell
            self.configure(chessTableViewCell: cell, chess: chess)
            return cell
        case .golf:
            let golf = feedDisplayable as! Golf
            let cell = tableView.dequeueReusableCell(withIdentifier: GolfTableViewCell.cellIdentifier()) as! GolfTableViewCell
            self.configure(golfTableViewCell: cell, golf: golf)
            return cell
        case .tennis :
            let tennis = feedDisplayable as! Tennis
            let cell = tableView.dequeueReusableCell(withIdentifier: TennisTableViewCell.cellIdentifier()) as! TennisTableViewCell
            self.configure(tennisTableViewCell: cell, tennis: tennis)
            return cell
        }
    }
    
    func configure(chessTableViewCell : ChessTableViewCell, chess : Chess) {
        chessTableViewCell.label.text = "Name : \(chess.name)\nDescription:\(chess.description)\nNumberOfRounds:\(chess.numberOfRounds)"
    }
    
    func configure(tennisTableViewCell : TennisTableViewCell, tennis : Tennis) {
        tennisTableViewCell.label.text = "Name : \(tennis.name)\nDescription:\(tennis.description)\nNumberOfSets:\(tennis.numberOfSets)"
    }
    
    func configure(golfTableViewCell : GolfTableViewCell, golf : Golf) {
        golfTableViewCell.label.text = "Name : \(golf.name)\nDescription:\(golf.description)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.feedDisplayable.count
        
    }
    
}

