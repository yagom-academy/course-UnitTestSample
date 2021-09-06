//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import Foundation

struct StrangeCalculator {
    func addNumbers(of numbers: [Int]) -> Int {
        return numbers.reduce(0, +)
    }
    
    // for TDD
    func addOddNumbers(of numbers: [Int]) -> Int {
        return 0
    }
    
    func addEvenNumbers(of numbers: [Int]) -> Int {
        return 0
    }
}
