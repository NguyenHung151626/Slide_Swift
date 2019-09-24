import UIKit

class Resolution {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print(hd.width)

