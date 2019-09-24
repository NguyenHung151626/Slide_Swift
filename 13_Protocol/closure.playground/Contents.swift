import UIKit

//talk
//khi 1 lam xong viec cua no, thi 2 moi lam
struct Cookie {
    var size = "small"
    var type = "sweet"
}
class Bakery {
    var onComplete: ((Cookie) -> Void)?
    func makeCookie() {
        var cookies = Cookie()
        cookies.size = "big"
        cookies.type = "salt"
        print("Cookie was made")
        onComplete?(cookies)
    }
}
class CookieShop {
    var deliverCookie: (Cookie) -> Void = { cookies in
        print("A lot of cookies size: \(cookies.size), with type: \(cookies.type)" +
            " was successfully delivered to the cookie shop")
    }
}
let bakery = Bakery()
let shop = CookieShop()
bakery.onComplete = shop.deliverCookie
bakery.makeCookie()
