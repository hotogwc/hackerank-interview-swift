//
//  ArrayManipulation.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import Foundation

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    
    var values = Array.init(repeating: 0, count: n)
    var a = 0
    var b = 0
    var k = 0
    var max = 0
    var current = 0
    
    for i in queries {
        a = i[0]
        b = i[1]
        k = i[2]
        values[a - 1] += k
        
        if b < n {
            values[b] -= k
        }
    }
    
    for j in 0..<n {
        current += values[j]
        if current > max {
            max = current
        }
    }
    
    return max
    
}
