//
//  TowerOfBlocks.swift
//  Jenga PRO
//
//  Created by Macbook on 28.12.2021.
//

import Foundation

struct TowerOfBlocks {
    private(set) var tower = [Block]()
    
    init(numberOfBlocks: Int) {
        for _ in 1...numberOfBlocks {
            tower.append(Block(isUsed: false, task: "Lucky you! There's no task :)"))
        }
    }
}
