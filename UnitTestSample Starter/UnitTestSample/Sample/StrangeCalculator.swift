
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
