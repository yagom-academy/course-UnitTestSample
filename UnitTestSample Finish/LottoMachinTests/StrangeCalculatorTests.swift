
import XCTest
@testable import UnitTestSample

class StrangeCalculatorTests: XCTestCase {
    var sut: StrangeCalculator!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = StrangeCalculator()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func test_3_6_9더하기() {
        // given
        let numbers = [3, 6, 9]
        
        // when
        let result = sut.addOddNumbers(of: numbers)
        
        // then
        XCTAssertEqual(result, 18)
    }
}
