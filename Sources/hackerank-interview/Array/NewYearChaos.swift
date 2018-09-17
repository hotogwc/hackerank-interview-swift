//
//  NewYearChaos.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/17.
//

import Foundation


struct NewYearChaos {
    static func minimumBribes(q: [Int]) {
        var result = 0
        
        for i in (0..<q.count).reversed() {
            if q[i] - (i + 1) > 2 {
                print("Too chaotic")
                return
            }
            
            let m = max(0, q[i] - 2)
            if m < i {
                for j in m..<i {
                    if q[j] > q[i] {
                        result += 1
                    }
                }
            }
        }
        
        print(result)
    }
}
