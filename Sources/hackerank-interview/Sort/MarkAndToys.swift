//
//  MarkAndToys.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/21.
//

import Foundation

func maximumToys(prices: [Int], k: Int) -> Int {
    
    let sorted = prices.sorted()
    var count = 0
    var sum = 0
    
    for p in sorted {
        sum += p
        if sum > k {
            break
        } else {
            count += 1
        }
    }
    return count
}
