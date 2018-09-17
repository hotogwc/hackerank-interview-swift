import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(hackerank_interviewTests.allTests),
    ]
}
#endif