import XCTest
@testable import SafeArray

class SafeArrayTests: XCTestCase {
    func testInboundIndices() {
        let data = [1, 2, 3, 4, 5]
        
        XCTAssertEqual(data[safe: 0], 1)
        XCTAssertEqual(data[safe: 4], 5)
    }
    
    func testOutboundIndices() {
        let data = [1, 2, 3, 4, 5]
        
        XCTAssertEqual(data[safe: 10], nil)
        XCTAssertEqual(data[safe: -1], nil)
    }
    
    func testWithInsertedElement() {
        var data = [1, 2, 3, 4, 5]
        
        XCTAssertEqual(data[safe: 5], nil)
        data.append(6)
        XCTAssertEqual(data[safe: 5], 6)
    }
    
    func testWithRemovedElement() {
        var data = [1, 2, 3, 4, 5]
        
        XCTAssertEqual(data[safe: 4], 5)
        data.removeLast()
        XCTAssertEqual(data[safe: 4], nil)
    }
    
    static var allTests = [
        ("testInboundIndices", testInboundIndices),
        ("testOutboundIndices", testOutboundIndices),
        ("testWithInsertedElement", testWithInsertedElement),
        ("testWithRemovedElement", testWithRemovedElement)
    ]
}
