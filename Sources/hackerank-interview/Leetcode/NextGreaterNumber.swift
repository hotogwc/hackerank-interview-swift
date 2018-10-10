//
//  NextGreaterNumber.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/30.
//

import Foundation

func nextGreaterElements(_ nums: [Int]) -> [Int] {
    
    var stack = [Int]()
    var result = Array<Int>.init(repeating: 0, count: nums.count)
    
    for i in (0..<(nums.count * 2)).reversed() {
        while !stack.isEmpty, nums[stack.last!] <= nums[i % nums.count] {
            _ = stack.popLast()
        }
        result[i % nums.count] = stack.isEmpty ? -1 : nums[stack.last!]
        stack.append(i % nums.count)
    }
    return result
}
