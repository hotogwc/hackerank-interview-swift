//
//  TopKFrequent.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/29.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    
    var count = Dictionary<Int, Int>()  //num: freq
    var maxFreq = 1
    for n in nums {
        count[n, default: 0] += 1
        maxFreq = max(maxFreq, count[n, default: 0])
    }
    
    var bucket = [Int: [Int]]() //freq : nums
    
    for (k, v) in count {
        bucket[v, default: []].append(k)
    }
    var result = [Int]()
    var cur = 0
    for i in (0...maxFreq).reversed() {
        if let nums = bucket[i] {
            result.append(contentsOf: nums)
            cur += nums.count
            if cur >= k {
                break
            }
        }
    }
    
    return result
}
