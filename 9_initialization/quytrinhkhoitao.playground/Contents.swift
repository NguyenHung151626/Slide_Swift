import UIKit

class Food {
    var name: String
    init(name: String) {
        self.name = name    //het phase 1      //unnamed x 1
    }
    convenience init() {
        self.init(name: "[Unnamed]")
        self.name = name + name + "/" + name
    }
}
class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
        self.name = name + name     //(phase 2)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
    //Auto Initializer here // name = unnamed x2
}
let oneMysteryItem = RecipeIngredient()
print(oneMysteryItem.name)

