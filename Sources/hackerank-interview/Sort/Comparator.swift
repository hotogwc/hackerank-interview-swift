//
//  Comparator.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/21.
//

import Foundation

struct Player {
    let name: String
    let score: Int
}


extension Player: Comparable { }


func ==(lhs: Player, rhs: Player) -> Bool {
    return lhs.name == rhs.name && lhs.score == rhs.score
}


func <(lhs: Player, rhs: Player) -> Bool {
    if lhs.score != rhs.score {
        return lhs.score < rhs.score
    }
    return String(lhs.name.first ?? "a") < String(rhs.name.first ?? "a")
}





