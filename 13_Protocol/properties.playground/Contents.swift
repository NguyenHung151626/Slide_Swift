import UIKit

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}
class SomeClass: SomeProtocol {
    var mustBeSettable: Int {
        get {
            return doesNotNeedToBeSettable
        }
        set {
            temp = newValue * 2
        }
    }
    let doesNotNeedToBeSettable: Int
    var temp: Int
    
    init(doesNotNeedToBeSettable: Int, temp: Int) {
        self.doesNotNeedToBeSettable = doesNotNeedToBeSettable
        self.temp = temp
    }
}
