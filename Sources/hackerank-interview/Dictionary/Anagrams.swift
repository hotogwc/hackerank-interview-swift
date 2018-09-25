//
//  Anagrams.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import Foundation


func sherlockAndAnagrams(s: String) -> Int {
    
    let subStrings = getAllSubStrings(s: s)
    
    var map = Dictionary<String, Int>()
    
    for s in subStrings {
        let chars = String(s.sorted())
        if let count = map[chars] {
            map[chars] = count + 1
        } else {
            map[chars] = 1
        }
    }
    
    var count = 0
    
    for (_, v) in map {
        count += v * (v - 1) / 2
    }

    return count
    
}

func getAllSubStrings(s: String) -> [String] {
    
    if s.count == 0 {
        return []
    }

    if s.count == 1 {
        return [s]
    }
    
    var result = [String]()
    
    for i in 1...s.count {
        // i is length of substring
        var start = 0
        var end = i
        while end <= s.count {
            let startIndex = s.index(s.startIndex, offsetBy: start)
            let endIndex = s.index(s.startIndex, offsetBy: end)
            result.append(String(s[startIndex..<endIndex]))
            //update end and start
            start += 1
            end += 1
        }
    }
    return result
}


