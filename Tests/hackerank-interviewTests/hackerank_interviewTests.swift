import XCTest
@testable import hackerank_interview

final class hackerank_interviewTests: XCTestCase {

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
    
    static var allTests = [
        ("testHourGlass", testHourGlass),
        ("testLeftRotation", testLeftRotation)
    ]
}
