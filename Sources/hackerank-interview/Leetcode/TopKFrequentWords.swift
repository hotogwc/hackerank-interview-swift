//
//  TopKFrequentWords.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/29.
//

import Foundation

func topKFrequent(_ words: [String], _ k: Int) -> [String] {
    var count = [String: Int]() //word: freq
    
    var maxFreq = 0
    
    for word in words {
        count[word, default: 0] += 1
        maxFreq = max(maxFreq, count[word, default: 0])
    }
    
    var bucket = [Int: [String]]() //freq: words
    
    for (k, v) in count {
        bucket[v, default: []].append(k)
        bucket[v, default: []].sort()
    }
    
    var result = [String]()
    
    var currentFreq = maxFreq
    
    while result.count != k {
        if let ws = bucket[currentFreq] {
            if ws.count >= 1 {
                result.append(bucket[currentFreq]!.removeFirst())
            } else {
                currentFreq -= 1
            }
        } else {
            currentFreq -= 1
        }
    }
    
    return result
}
