//
//  FeedDisplayable.swift
//  Test
//
//  Created by Avismara HL on 13/11/16.
//  Copyright © 2016 Avismara HL. All rights reserved.
//

import Foundation

protocol FeedDisplayable {
    var type : FeedDisplayableType { get }
    var name : String { get set }
    var description : String { get set }
}

enum FeedDisplayableType {
    case chess,tennis,golf
}
