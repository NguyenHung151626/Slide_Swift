import UIKit

struct Person {
    var age = 24
    
    lazy var fibonacciOfAge: Int = self.fibonacci(of: self.age)
    
    func fibonacci(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}
var person = Person()
print(person.fibonacciOfAge)
