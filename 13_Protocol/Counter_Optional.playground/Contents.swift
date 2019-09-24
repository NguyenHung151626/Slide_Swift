import UIKit

@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}
class Counter {
    var count = 0
    var dataSource: CounterDataSource?
    func increment() {
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}
class ThreeSource: NSObject, CounterDataSource {
    let fixedIncrement = 3
}

class TowardsZeroSource: NSObject, CounterDataSource {
    func increment(forCount count: Int) -> Int {
        if count == 0 {
            return 0
        } else if count < 0 {
            return 1
        } else {
            return -1
        }
    }
}
var counter = Counter()
counter.count = -10
let plusThree = ThreeSource()
let towardsZero = TowardsZeroSource()
counter.dataSource = plusThree
for _ in 1...10 {
    counter.increment()
    print(counter.count)
    switch counter.dataSource {
    case let obj where obj === plusThree:
        counter.dataSource = towardsZero
    default:
        counter.dataSource = plusThree
    }
}

