import UIKit

struct SomeGame {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
}
class Player {
    let playerName: String
    func complete(level: Int) {
        SomeGame.unlock(level + 1)
    }
    init(name: String) {
        playerName = name
    }
}
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(SomeGame.highestUnlockedLevel)")
// Prints "highest unlocked level is now 2"

