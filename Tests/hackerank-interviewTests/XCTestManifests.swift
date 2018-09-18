import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayTests.allTests),
        testCase(DictionaryTests.allTests)
    ]
}
#endif
