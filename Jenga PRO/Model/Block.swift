//
//  Block.swift
//  Jenga PRO
//
//  Created by Macbook on 28.12.2021.
//

import Foundation

struct Block: Equatable {
    let task: String
    var isUsed: Bool
    var position: Variant
    var floor: Int
    
    enum Variant {
        case center
        case lateral
        case empty 
    }
}
