import XCTest
@testable import hackerank_interview

final class ArrayTests: XCTestCase {
    
    func testHourGlass() {
        let source = [
            [1,1,1,0,0,0],
            [0,1,0,0,0,0],
            [1,1,1,0,0,0],
            [0,0,2,4,4,0],
            [0,0,0,2,0,0],
            [0,0,1,2,4,0]
        ]
        let result = HourGlass.hourglassSum(arr: source)
        XCTAssertEqual(19, result)
    }
    
    func testLeftRotation() {
        let result = LeftRotation.rotLeft(a: [1,2,3,4,5], d: 4)
        XCTAssertEqual([5,1,2,3,4], result)
    }
    
    func testMinimumSwaps() {
        var input = [1,3,5,2,4,6,7,8]
        XCTAssertEqual(3, minimumSwaps(arr: &input))
        
    }
    
    func testArrayManipulation() {
        let input = [
            [1,2,100],
            [2,5,100],
            [3,4,100]
        ]
        XCTAssertEqual(200, arrayManipulation(n: 5, queries: input))
    }
    
    
    
    static var allTests = [
        ("testHourGlass", testHourGlass),
        ("testLeftRotation", testLeftRotation),
        ("testMinimumSwaps", testMinimumSwaps),
        ("testArrayManipulation", testArrayManipulation)
    ]
}
