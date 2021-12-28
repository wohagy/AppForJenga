//
//  JengaGame.swift
//  Jenga PRO
//
//  Created by Macbook on 28.12.2021.
//

import Foundation

struct Game {
    private let numberOfBlock = 48
    private var tower = TowerOfBlocks(numberOfBlocks: 48)
    private(set) var numberForBlock = 0
    
    mutating func giveNumberForBlock() {
        numberForBlock = Int.random(in: 1...numberOfBlock)
    }
}
