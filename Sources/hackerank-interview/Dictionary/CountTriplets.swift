//
//  CountTriplets.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import Foundation

func countTriplets(arr: [Int], r: Int) -> Int {
    
    var count = 0
    var map1 = Dictionary<Int, Int>()
    var map2 = Dictionary<Int, Int>()
    
    for v in arr {
        if let c = map2[v] {
            count += c
        }
        
        if let c = map1[v] {
            if let d = map2[v*r] {
                map2[v*r] = d + c
            } else {
                map2[v*r] = c
            }
            
        }
        
        if let c = map1[v*r] {
            map1[v*r] = c + 1
        } else {
            map1[v*r] = 1
        }
    }
    return count
}
