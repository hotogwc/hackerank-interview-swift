//
//  DictionaryTests.swift
//  hackerank-interview
//
//  Created by addictedtoelixir on 2018/9/18.
//

import XCTest
@testable import hackerank_interview

class DictionaryTests: XCTestCase {
    
    func testAnagram() {
        XCTAssertEqual(10, sherlockAndAnagrams(s: "kkkk"))
        XCTAssertEqual(3, sherlockAndAnagrams(s: "ifailuhkqq"))
    }
    
    func testCountTriplets() {
        XCTAssert(countTriplets(arr: [1,5,5,25,125], r: 5) == 4)
    }
    
    func testFrequencyQueries() {
        let source = [
            [1,3],
            [2,3],
            [3,2],
            [1,4],
            [1,5],
            [1,5],
            [1,4],
            [3,2],
            [2,4],
            [3,2]
        ]
        XCTAssert(freqQuery(queries: source) == [0,1,1])
    }
    
    static var allTests = [
        ("testAnagram", testAnagram),
        ("testCountTriplets", testCountTriplets)
//        ("testLeftRotation", testLeftRotation),
//        ("testMinimumSwaps", testMinimumSwaps),
//        ("testArrayManipulation", testArrayManipulation)
    ]
}
