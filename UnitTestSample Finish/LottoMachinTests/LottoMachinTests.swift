
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
    func test_isValidLottoNumbers_6개보다적은숫자입력() {
        // given
        let input = [3, 6, 9]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers_6개보다많은숫자입력() {
        // given
        let input = [3, 6, 9, 12, 15, 18, 21, 24]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers_6개보다많은숫자입력_중복해서6개() {
        // given
        let input = [3, 6, 9, 12, 15, 18, 15, 9]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers_6개숫자입력_중복없이() {
        // given
        let input = [3, 6, 9, 12, 15, 18]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertTrue(result)
    }
    
    func test_isValidLottoNumbers_6개숫자입력_중복있게() {
        // given
        let input = [3, 6, 9, 9, 15, 18]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers_1보다작은수를_포함하는배열전달() {
        // given
        let input = [0, 3, 6, 9, 12, 15]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers_45보다큰수를_포함하는배열전달() {
        // given
        let input = [3, 6, 9, 12, 15, 50]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertFalse(result)
    }
    
    func test_isValidLottoNumbers_모든수가1부터45범위에_포함되는배열전달() {
        // given
        let input = [1, 5, 15, 25, 35, 45]
        
        // when
        let result = sut.isValidLottoNumbers(of: input)
        
        // then
        XCTAssertTrue(result)
    }

    // MARK: makeRandomLottoNumbersArray
    func test_makeRandomLottoNumbersArray_반환배열이유효한지() {
        // given
        let randomNumbers = sut.makeRandomLottoNumbersArray()
        
        // when
        let result = sut.isValidLottoNumbers(of: randomNumbers)
        
        // then
        XCTAssertTrue(result)
    }
}
