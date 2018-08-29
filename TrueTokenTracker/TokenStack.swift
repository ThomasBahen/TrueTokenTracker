//
//  TokenStack.swift
//  TrueTokenTracker
//
//  Created by Jim Bahen on 2018-06-29.
//  Copyright © 2018 Thomas Bahen. All rights reserved.
//

import Foundation

class TokenStack {
    
    var name : String
    var power: String
    var toughness: String
    var keywords: [String]?
    var tokenCount: Int
    
    init(name: String, power: String, toughness: String) {
        self.name = name
        self.power = power
        self.toughness = toughness
        self.tokenCount = 1
    }
}
