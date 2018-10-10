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
    
    dfs(chars: &chars, result: &result, index: 0)
    return result
}


func isDigit(c: Character) -> Bool {
    let set = CharacterSet.decimalDigits
    return set.contains(c.unicodeScalars.first!)
}


func dfs(chars: inout [Character], result: inout [String], index: Int) {
    if index == chars.count {
        result.append(String(chars))
        return
    }
    
    if !isDigit(c: chars[index]) {
        //update chars
        chars[index] = Array(String(chars[index]).lowercased())[0]
        dfs(chars: &chars, result: &result, index: index + 1)
        chars[index] = Array(String(chars[index]).uppercased())[0]
        dfs(chars: &chars, result: &result, index: index + 1)
    } else {
        dfs(chars: &chars, result: &result, index: index + 1)
    }
    
}



