//
//  LargestRect.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/27.
//

import Foundation


func largestRectangleArea(_ heights: [Int]) -> Int {
    
    if heights.count == 0 {
        return 0
    }
    
    if heights.count == 1 {
        return heights[0]
    }
    
    var leftIndexes = Array<Int>.init(repeating: 0, count: heights.count)
    var rightIndexes = Array<Int>.init(repeating: 0, count: heights.count)
    leftIndexes[0] = -1
    rightIndexes[heights.count - 1] = heights.count
    
    for i in 1..<heights.count {
        var p = i - 1
        while p >= 0, heights[p] >= heights[i] {
            p = leftIndexes[p]
        }
        leftIndexes[i] = p
    }
    
    for i in (0...heights.count - 2).reversed() {
        var p = i + 1
        while p < heights.count, heights[p] >= heights[i] {
            p = rightIndexes[p]
        }
        rightIndexes[i] = p
    }
    var maxArea = 0
    for i in 0..<heights.count {
        maxArea = max(maxArea, heights[i] * (rightIndexes[i] - leftIndexes[i] - 1))
    }
    
    return maxArea
}
