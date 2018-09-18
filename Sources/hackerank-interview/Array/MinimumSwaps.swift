//
//  MinimumSwaps.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/17.
//

import Foundation

func minimumSwaps(arr: inout [Int]) -> Int  {
    var i = 0
    var count = 0
    while i < arr.count  {
        if arr[i] == i + 1 {
            i += 1
            continue
        }
        arr.swapAt(i, arr[i] - 1)
        count += 1
    }
    
    return count
}
