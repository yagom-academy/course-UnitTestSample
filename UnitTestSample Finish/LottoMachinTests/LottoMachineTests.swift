//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import XCTest
@testable import UnitTestSample

class LottoMachinTests: XCTestCase {
    var sut: LottoMachine!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LottoMachine()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: - isValidLottoNumbers
    func test_isValidLottoNumbers호출시_6개보다적은숫자입력했을때_False를반환하는지() {
        // given
        let input = [3, 6, 9]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers호출시_6개보다많은숫자입력했을때_False를반환하는지() {
        // given
        let input = [3, 6, 9, 12, 15, 18, 21, 24]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers호출시_중복해서6개가되는_6개보다많은숫자를입력했을때_False를반환하는지() {
        // given
        let input = [3, 6, 9, 12, 15, 18, 15, 9]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers호출시_중복된숫자없이_6개숫자입력했을때_True를반환하는지() {
        // given
        let input = [3, 6, 9, 12, 15, 18]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertTrue(result)
    }
    
    func test_isValidLottoNumbers호출시_중복된숫자가있는_6개숫자입력했을때_False를반환하는지() {
        // given
        let input = [3, 6, 9, 9, 15, 18]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers호출시_1보다작은수를포함하는배열전달했을때_False를반환하는지() {
        // given
        let input = [0, 3, 6, 9, 12, 15]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers호출시_45보다큰수를포함하는배열전달했을때_False를반환하는지() {
        // given
        let input = [3, 6, 9, 12, 15, 50]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers호출시_모든수가1부터45범위에포함되는배열전달했을때_True를반환하는지() {
        // given
        let input = [1, 5, 15, 25, 35, 45]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertTrue(result)
    }

    // MARK: makeRandomLottoNumbersArray
    func test_makeRandomLottoNumbersArray호출시_반환하는배열이_isValidLottoNumbers에만족하는지() {
        // given
        let randomNumbers = sut.makeRandomLottoNumbersArray()
        
        // when
        let result = sut.isValidLottoNumbers(of: randomNumbers)
        
        // then
        XCTAssertTrue(result)
    }
}
