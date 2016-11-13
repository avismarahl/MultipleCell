//
//  Badminton.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import Foundation

struct Chess : FeedDisplayable {
    var type : FeedDisplayableType {
        get {
            return .chess
        }
    }
    var name : String
    var description : String
    var numberOfRounds : Int
    
    var imageNames = ["images.jpeg","images (1).jpeg","images (2).jpeg","images (3).jpeg","images (4).jpeg"]
    
    init(name:String,description:String,numberOfRounds:Int) {
        self.name = name
        self.description = description
        self.numberOfRounds = numberOfRounds
    }
    
    static func chessModels() -> [Chess] {
        var chessModels = [Chess]()
        chessModels.append(Chess(name: "chess 1", description: "This is dkjfsdkfjdskaksdfadsfasdifasdfkjasdhfjkashdfjkhasjkdfhakjsdhfjkashdfkljashdfjkasdhfjkashdfkljasdhfjkashdfkjahsdfjhasjkdfhaksf", numberOfRounds: 3))
        chessModels.append(Chess(name: "chess 2", description: "This is kdjfdksff", numberOfRounds: 4))
        chessModels.append(Chess(name: "chess 3", description: "This is dfdsfre", numberOfRounds: 5))
        return chessModels

    }
}

