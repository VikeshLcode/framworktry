import Foundation
import ObjectMapper

struct partiPayDETAILS : Mappable {
    var accNo : String?
    var voucher : String?
    var paydate : String?
    var postingStatus : String?
    var payTranid : String?
    var rcptAmt : String?
    var payMode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        accNo <- map["AccNo"]
        voucher <- map["voucher"]
        paydate <- map["Paydate"]
        postingStatus <- map["PostingStatus"]
        payTranid <- map["PayTranid"]
        rcptAmt <- map["RcptAmt"]
        payMode <- map["PayMode"]
    }

}

