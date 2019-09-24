import UIKit

protocol BakeryDelegate: AnyObject {
    func deliverCookie(_ cookies: Cookie)
}
struct Cookie {
    var size = "small"
    var type = "sweet"
}
class Bakery {
    weak var delegate: BakeryDelegate?
    func makeCookie() {
        var cookies = Cookie()
        cookies.size = "big"
        cookies.type = "salt"
        delegate?.deliverCookie(cookies)
    }
}
class CookieShop: BakeryDelegate {
    func deliverCookie(_ cookies: Cookie) {
        print("A lot of cookies size: \(cookies.size), with type: \(cookies.type)" +
            " was successfully delivered to the cookie shop")
    }
}

var cookieShop = CookieShop()   //2
var bakery = Bakery()           //1
bakery.delegate = cookieShop
bakery.makeCookie()


