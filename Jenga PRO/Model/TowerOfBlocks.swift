//
//  TowerOfBlocks.swift
//  Jenga PRO
//
//  Created by Macbook on 28.12.2021.
//

import Foundation

struct TowerOfBlocks {
    private(set) var tower = [Block]()
    
    mutating func replaceUsedBlock(for block: Int, and floor: Int) {
        tower[block].isUsed = true
        tower[block].floor = floor
        tower.changeWithReplaceToEnd(index: block,
                                     element: Block(task: "",
                                                    isUsed: false,
                                                    position: Block.Variant.empty,
                                                    floor: (block+1)/3 + 1))
    }
    
    init(numberOfBlocks: Int) {
        for floor in 1...(numberOfBlocks/3) {
            for index in 1...3 {
                tower.append(Block(task: "None",
                                   isUsed: false,
                                   position: index % 2 == 0 ? Block.Variant.center : Block.Variant.lateral,
                                   floor: floor))
            }
        }
    }
    
    func printingTower(numberOfFloor: Int) {
        var mas = [[String]]()
        for _ in 1...numberOfFloor {
            mas.append([String]())
        }
        for element in tower {
            var toAppend: String
            if element.position == .empty {
                toAppend = "▯"
            } else {
                toAppend = "▮"
            }
            mas[element.floor - 1].append(toAppend)
        }
        for arrays in mas {
            print(arrays)
        }
        
    }
}

extension Array where Element: Equatable {
    mutating func changeWithReplaceToEnd(index: Int, element: Element) {
        let elementToEnd = self [index]
        self [index] = element
        self.append(elementToEnd)
        
    }
}
