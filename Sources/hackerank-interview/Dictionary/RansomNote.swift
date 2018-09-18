//
//  RansomNote.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import Foundation

func checkMagazine(magazine: [String], note: [String]) -> Void {
    
    var map = Dictionary<String, Int>()
    
    note.forEach {
        if let count = map[$0] {
            map[$0] = count + 1
        } else {
            map[$0] = 1
        }
    }
    
    magazine.forEach {
        if let count = map[$0] {
            map[$0] = count - 1
            if map[$0]! <= 0 {
                map[$0] = nil
            }
        }
    }
    
    if map.keys.count == 0 {
        print("Yes")
    } else {
        print("No")
    }
}
