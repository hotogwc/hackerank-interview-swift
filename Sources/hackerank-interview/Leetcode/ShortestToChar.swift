//
//  ShortestToChar.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/27.
//

import Foundation

func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    
    var dic = [Int: Int]() //index: distance
    
    for i in 0..<S.count {
        if S[buildIndexForString(S, index: i)] == C {
            dic[i] = 0
        } else {
            
            var j = i
            while S[buildIndexForString(S, index: j)] != C {
                j += 1
                if j == S.count {
                    break
                }
            }
            if j != S.count {
                dic[i] = j - i
            } else {
                dic[i] = Int.max
            }
            
        }
    }
    //all keys have value now
    for i in (0..<S.count).reversed() {
        if S[buildIndexForString(S, index: i)] != C {
            var j = i
            while S[buildIndexForString(S, index: j)] != C {
                j -= 1
                if j == -1 {
                    break
                }
            }
            if j != -1 {
                let currentValue = dic[i]!
                dic[i] = min(i - j, currentValue)
            }
        }
    }
    var result = [Int]()
    for i in (0..<S.count) {
        result.append(dic[i]!)
    }
    return result
}

func buildIndexForString(_ s: String, index: Int) -> String.Index {
    return s.index(s.startIndex, offsetBy: index)
}
