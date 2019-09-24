import UIKit

class Circle {
    var radius: Double
    var diagram: Double {
        get {
            return radius * 2
        }
        set {
            radius = newValue / 2
        }
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}
var circle = Circle(radius: 10.0)
print(circle.diagram)
print(circle.radius)
circle.diagram = 100
print(circle.radius)
print(circle.diagram)

