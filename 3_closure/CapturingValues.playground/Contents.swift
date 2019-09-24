import UIKit

//closure: incrementer()
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
var incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen())                                 // 10
print(incrementByTen())                                 // 20
let incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven())                               // 7
print(incrementBySeven())                               // 14
//kiểu tham chiếu
incrementByTen = incrementBySeven
print(incrementByTen())                                 // 21

