//
//  DictionaryTests.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import XCTest
@testable import hackerank_interview

class SortTests: XCTestCase {
    
    func testMarkAndToys() {
        let a = [1,12,5,111,200,1000,10]
        
        XCTAssertEqual(maximumToys(prices: a, k: 50), 4)
    }
    
    static var allTests = [
        ("testMarkAndToys", testMarkAndToys),
    ]
}
