//
//  LongestUncommonSequenceI.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/26.
//

import Foundation

func findLUSlength(_ a: String, _ b: String) -> Int {
    return a == b ? -1 : max(a.count, b.count)
}



