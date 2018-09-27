//
//  CompressWord.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/25.
//

import Foundation

fileprivate extension Int {
    var length: Int {
        return String(self).count
    }
}


class StringCompression {
    func compress(_ chars: inout [Character]) -> Int {
        var index = 0, currentCount = 0
        
        for i in 0..<chars.count {
            currentCount += 1
            
            if i + 1 == chars.count || chars[i] != chars[i + 1] {
                chars[index] = chars[i]
                
                if currentCount != 1 {
                    chars.replaceSubrange(index + 1...currentCount.length + index, with: Array(String(currentCount)))
                }
                
                index += currentCount == 1 ? 1 : 1 + currentCount.length
                currentCount = 0
            }
        }
        
        return index
    }
}




