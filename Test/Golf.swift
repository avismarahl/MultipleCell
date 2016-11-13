//
//  Golf.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import Foundation

struct Golf : FeedDisplayable {
    var type : FeedDisplayableType {
        get {
            return .golf
        }
    }
    var name : String
    var description : String
}
