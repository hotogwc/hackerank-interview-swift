//
//  BubbleSort.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/21.
//

import Foundation


func countSwaps(a: [Int]) -> Void {
    var arr = a
    var count = 0
    
    bubbleSort(arr: &arr, count: &count)
    print("Array is sorted in \(count) swaps.")
    print("First Element: \(arr.first!)")
    print("Last Element: \(arr.last!)")
}

func bubbleSort(arr: inout [Int], count: inout Int) {
    let n = arr.count
    for _ in 0..<n {
        for j in 0..<n-1 {
            if arr[j] > arr[j+1] {
                arr.swapAt(j, j+1)
                count += 1
            }
        }
    }
}
