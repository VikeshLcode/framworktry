import Foundation
import ObjectMapper

struct DETAILS : Mappable {
    var accNo : String?
    var paydate : String?
    var renewTranid : String?
    var renewAmt : String?
    var renewStatus : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        accNo <- map["AccNo"]
        paydate <- map["Paydate"]
        renewTranid <- map["RenewTranid"]
        renewAmt <- map["RenewAmt"]
        renewStatus <- map["RenewStatus"]
    }

}

