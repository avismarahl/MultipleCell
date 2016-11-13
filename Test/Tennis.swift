//
//  Tennis.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import Foundation

struct Tennis : FeedDisplayable {
    var type : FeedDisplayableType {
        get {
            return .chess
        }
    }
    var name : String
    var description : String
    
    var numberOfSets : Int
}
