import UIKit

extension Array where Element == Double {
    func average() -> Double {
        var sum = 0.0
        for item in self {
            sum += Double(item)
        }
        return sum / Double(count)
    }
}
extension Array where Element == Int {
    func average() -> Double {
        var sum = 0
        for item in self {
            sum += item
        }
        return Double(sum) / Double(count)
    }
}
extension Dictionary where Key == String, Value == Double {
    func average() -> Double {
        var sum = 0.0
        var count = 0
        for (_, value) in self {
            sum += value
            count += 1
        }
        return sum / Double(count)
    }
}
let airports = ["Noi Bai": 1.9, "Tan Son Nhat" : 2.5, "Incheon" : 6.0]
print("Diem trung binh cho cac san bay trong danh sach: ")
print(airports.average())
print("trung binh gia tri 1 mang: ")
print([1260.0, 1200.0, 98.6, 37.0].average())


let array = [1, 4, 232, -1, -10]
print(array.average())
