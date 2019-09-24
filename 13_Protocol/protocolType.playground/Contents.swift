import UIKit

protocol Edible {
    func eat()
}
class Apple: Edible {
    func eat() {
        print("Eat an apple...")
    }
}
class Banana: Edible {
    func eat() {
        print("Eat a bunch of Bananas...")
    }
}
class SweetPotato: Edible {
    func eat() {
        print("Eat a Sweet Potato...")
    }
}
let apple = Apple()
let banana = Banana()
let sweetPotato = SweetPotato()
let things: [Edible] = [apple, banana, sweetPotato]
for thing in things {
    thing.eat()
}

/////////
class WoodenTable {
    let height = 180.0
}
let table = WoodenTable()
let manyThings: [AnyObject] = [apple, banana, sweetPotato, table]
var i = 0
for thing in manyThings {
    if let number = thing as? Edible {
        number.eat()
        i += 1
    }
}
print("there are \(i) thing(s) which is Edible")
