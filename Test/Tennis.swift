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
            return .tennis
        }
    }
    var name : String
    var description : String
    
    var numberOfSets : Int
    
    static func tennisModels() -> [Tennis] {
        var tennisModels = [Tennis]()
        
        tennisModels.append(Tennis(name: "tennis 1", description: "This is dkjfsdkfjdsk", numberOfSets: 3))
        tennisModels.append(Tennis(name: "tennis 2", description: "This is kdjfdksff", numberOfSets: 4))
        tennisModels.append(Tennis(name: "tennis 3", description: "This is dfdsfre", numberOfSets: 5))
        return tennisModels
        
    }
}
