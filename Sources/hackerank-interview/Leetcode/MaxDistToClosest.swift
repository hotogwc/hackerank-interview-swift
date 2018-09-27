//
//  MaxDistToClosest.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/26.
//

import Foundation

private func middleMax(_ a: Int) -> Int {
    if a % 2 == 0 {
        return a / 2
    }
    return (a / 2) + 1
}

func maxDistToClosest(_ seats: [Int]) -> Int {
    
    enum CountState {
        case prefix(count: Int)
        case middle(count: Int)
        case suffix(count: Int)
        
        var max: Int {
            switch self {
            case .middle(count: let c):
                return middleMax(c)
            case .prefix(count: let c), .suffix(count: let c):
                return c
            }
        }
        
        mutating func incr() {
            switch self {
            case .middle(count: let c):
                self = .middle(count: c + 1)
            case .prefix(count: let c):
                self = .prefix(count: c + 1)
            case .suffix(count: let c):
                self = .suffix(count: c + 1)
            }
        }
    }
    
    var currentState: CountState = .prefix(count: 0)
    var maxV = 0
    
    for (i, v) in seats.enumerated() {
        if i == seats.count - 1 {
            //wrap up state
            switch currentState {
            case .prefix(count: _):
                maxV = seats.count - 1
            case .middle(count: let c):
                if v == 1 {
                    maxV = max(maxV, middleMax(c))
                } else {
                    maxV = max(maxV, c + 1)
                }
            default:
                break
            }
        } else {
            if v == 1 {
                //update max
                maxV = max(maxV, currentState.max)
                //update state
                currentState = .middle(count: 0)
            } else {
                //add count
                currentState.incr()
            }
        }
        
    }
    return maxV
}


