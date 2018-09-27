//
//  LetterCasePermutation.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/26.
//

import Foundation


func letterCasePermutation(_ S: String) -> [String] {
    
    var chars = Array(S)
    var result = [String]()
    
    dfs(arr: &chars, result: &result, index: 0)
    return result
}


func isDigit(c: Character) -> Bool {
    let set = CharacterSet.decimalDigits
    return set.contains(c.unicodeScalars.first!)
}


func dfs(arr: inout [Character], result: inout [String], index: Int) {
    if index == arr.count {
        result.append(String(arr))
        return
    }
    
    if !isDigit(c: arr[index]) {
        arr[index] = Array(String(arr[index]).lowercased())[0]
        dfs(arr: &arr, result: &result, index: index + 1)
        arr[index] = Array(String(arr[index]).uppercased())[0]
        dfs(arr: &arr, result: &result, index: index + 1)
        
    } else {
        dfs(arr: &arr, result: &result, index: index + 1)
    }
}



