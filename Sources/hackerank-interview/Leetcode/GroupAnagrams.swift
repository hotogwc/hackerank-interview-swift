//
//  GroupAnagrams.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/27.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dic = [String: [String]]()
    
    for s in strs {
        let sorted = String(s.sorted())
        if let _ = dic[sorted] {
            dic[sorted]!.append(s)
        } else {
            dic[sorted] = [s]
        }
    }
    return dic.map { $0.value }
}


