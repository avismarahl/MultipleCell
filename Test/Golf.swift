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
    
    static func golfModels() -> [Golf] {
        var golfModels = [Golf]()
        golfModels.append(Golf(name: "Golf1", description: "This is aweso234me"))
        golfModels.append(Golf(name: "Golf12", description: "This is awesom23e"))
        golfModels.append(Golf(name: "Golf13", description: "This is awesome232"))
        return golfModels
    }
}
