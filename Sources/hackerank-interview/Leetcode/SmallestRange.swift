//
//  SmallestRange.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/25.
//

import Foundation


func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
    let sorted = A.sorted()
    let cap = (sorted.last! - K) - (sorted.first! + K)
    if cap <= 0 {
        return 0
    } else {
        return cap
    }
}



