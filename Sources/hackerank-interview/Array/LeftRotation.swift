//
//  LeftRotation.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/17.
//

import Foundation


struct LeftRotation {
    static func rotLeft(a: [Int], d: Int) -> [Int] {
        precondition(d <= a.count)
        return Array(a[d..<a.count]) + Array(a[0..<d])
    }
}
