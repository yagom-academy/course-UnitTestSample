
import Foundation

struct LottoMachine {
    func isValidLottoNumbers(of numbers: [Int]) -> Bool {
        guard numbers.count == 6, Set(numbers).count == 6 else {
            return false
        }
        
        for num in numbers {
            guard 1...45 ~= num else {
                return false
            }
        }
        
        return true
    }
    
    func makeRandomLottoNumbersArray() -> [Int] {
        var numberSet: Set<Int> = []
        
        while numberSet.count < 6 {
            let randomNumber = Int.random(in: 1...45)
            numberSet.insert(randomNumber)
        }
        
        return Array(numberSet)
    }
    
    
    func countMatchingNumber(user: [Int], winner: [Int]) throws -> Int {
        guard isValidLottoNumbers(of: user) && isValidLottoNumbers(of: winner) else {
            throw LottoMachineError.invalidNumbers
        }
        
        let winNumbers = user.filter { winner.contains($0) }
        return winNumbers.count
    }
}

enum LottoMachineError: Error {
    case invalidNumbers
}
