import UIKit

private protocol BakeryDelegate: AnyObject {
    func deliverCookie(_ cookies: Cookie)
}
private struct Cookie {
    var size = "small"
    var type = "sweet"
}
class Bakery {
    fileprivate weak var delegate: BakeryDelegate?
    func makeCookie() {
        var cookies = Cookie()
        cookies.size = "big"
        cookies.type = "salt"
        delegate?.deliverCookie(cookies)
    }
}
class CookieShop: BakeryDelegate {
    fileprivate func deliverCookie(_ cookies: Cookie) {
        print("A lot of cookies size: \(cookies.size), with type: \(cookies.type)" +
            " was successfully delivered to the cookie shop")
    }
}

var cookieShop = CookieShop()   //2
var bakery = Bakery()           //1
bakery.delegate = cookieShop
bakery.makeCookie()

struct SomeStruct {
    private var privateVariable = 12
    var getPrivateVariable: Int {
        get {
            return privateVariable
        }
        set {
            privateVariable = newValue
        }
    }
}
var someStruct = SomeStruct()
print(someStruct.getPrivateVariable)
someStruct.getPrivateVariable = 10
print(someStruct.getPrivateVariable)

