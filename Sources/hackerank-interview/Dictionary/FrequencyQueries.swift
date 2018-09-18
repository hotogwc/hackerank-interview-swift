//
//  FrequencyQueries.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import Foundation



func freqQuery(queries: [[Int]]) -> [Int] {
    
    var data = [Int]()
    var dataToFreq = Dictionary<Int, Int>()  //value: freq
    var freqToOccurence = Dictionary<Int, Int>()  //freq: appears
    
    var result = [Int]()
    
    for pair in queries {
        let op = pair[0]
        let value = pair[1]
        switch op {
        case 1:
            data.append(value)
            dataToFreq[value, default: 0] += 1
            freqToOccurence[dataToFreq[value, default: 0], default: 0] += 1
            break
        case 2:
            for (i,v) in data.enumerated() {
                if v == value {
                    data.remove(at: i)
                    let oldFreq = dataToFreq[value, default: 0]
                    let newFreq = dataToFreq[value, default: 0] - 1
                    dataToFreq[value, default: 0] = newFreq
                    freqToOccurence[oldFreq, default: 0] -= 1
                    freqToOccurence[newFreq, default: 0] += 1
                    break
                }
            }
            break
        case 3:
            if freqToOccurence[value, default: 0] > 0 {
                result.append(1)
            } else {
                result.append(0)
            }
            break
        default:
            break
        }
    }
    return result
}





