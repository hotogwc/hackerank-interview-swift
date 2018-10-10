//
//  SmallestRangeII.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/29.
//

import Foundation


func smallestRangeII(_ A: [Int], _ K: Int) -> Int {
    
    if A.count <= 1 {
        return 0
    }
    var sorted = A.sorted()
    
    let first = sorted.first!
    let last = sorted.last!
    
    var result = last - first
    
    for i in (0..<sorted.count - 1) {
        result = min(result, max(sorted[i] + K, last - K) - min(first + K, sorted[i + 1] - K))
    }
    
    return result
}


