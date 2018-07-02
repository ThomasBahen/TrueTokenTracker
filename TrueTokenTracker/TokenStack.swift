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
    var power: Int
    var toughness: Int
    var abilities: [String]?
    
    init(name: String, power: Int, toughness: Int) {
        self.name = name
        self.power = power
        self.toughness = toughness
    }
}
