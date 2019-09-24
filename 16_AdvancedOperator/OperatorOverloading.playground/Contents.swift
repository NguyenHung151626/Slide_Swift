import UIKit

struct Vector2D {
    var x = 0.0, y = 0.0
}
extension Vector2D {
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
    static func += (left: inout Vector2D, right: Vector2D) {
        left = left + right
    }
    static func * (left: Vector2D, right: Vector2D) -> Double {
        return left.x * right.x + left.y * right.y
    }
}

extension Vector2D: Equatable {
    static func == (left: Vector2D, right: Vector2D) -> Bool {
        return left.x == right.x && left.y == right.y
    }
}

let vector = Vector2D(x: 3.0, y: 1.0)
var anotherVector = Vector2D(x: 2.0, y: 4.0)
anotherVector += vector
let combinedVector = vector + anotherVector
let anotherAnotherVector = Vector2D(x: 3.0, y: 1.0)
print("(\(combinedVector.x), \(combinedVector.y))")
if (anotherAnotherVector == vector) {
    print("ok")
}
//Addition: cung priority voi + - ...
infix operator +-: AdditionPrecedence
extension Vector2D {
    static func +- (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y - right.y)
    }
}
//toan tu no meaning, dinh nghia
prefix operator +++
extension Vector2D {
    static prefix func +++ (vector: inout Vector2D) -> Vector2D {
        vector += vector
        return vector
    }
}
let firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)
let plusMinusVector = firstVector +- secondVector
print("(\(plusMinusVector.x), \(plusMinusVector.y))")

