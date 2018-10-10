//
//  SubSetsII.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/28.
//

import Foundation

func subsetsII(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    result.append([])
    for i in nums {
        for var subset in result {
            subset.append(i)
            result.append(subset)
        }
    }
    return Array(Set( result.map { $0.sorted() }))
}
