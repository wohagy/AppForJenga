//
//  JengaGame.swift
//  Jenga PRO
//
//  Created by Macbook on 28.12.2021.
//

import Foundation

struct Game {
    let numberOfBlock = 48
    private var tower = TowerOfBlocks(numberOfBlocks: 48)
    private var numberOfFloor = 48/3 + 1
    private var numberOfMoves = 0
    private(set) var numberForBlock = 0
    
    
    mutating func giveNumberForBlock() {
        if numberOfMoves % 3 == 0, numberOfMoves != 0 {
            numberOfFloor += 1
        }
        numberOfMoves += 1
        numberForBlock = Int.random(in: 1...(numberOfBlock-6))
        tower.replaceUsedBlock(for: (numberForBlock-1), and: numberOfFloor)
        tower.printingTower(numberOfFloor: numberOfFloor)
    }
    
    
}
