//
//  SubSets.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/26.
//

import Foundation


func subsets(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    result.append([])
    for i in nums {
        for var subset in result {
            subset.append(i)
            result.append(subset)
        }
    }
    return result
}
