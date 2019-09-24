import UIKit

let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let lowercaseNames = cast.map { s1 in return s1.count}
print(lowercaseNames)
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
// chuyển numbers: [Int] => [String]
let numbersString = numbers.map() { (number: Int) -> String in
    var number = number
    var output = ""
    repeat {
        //dict => optional
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
print(numbersString)
