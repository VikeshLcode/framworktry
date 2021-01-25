import Foundation
import ObjectMapper

struct Active : Mappable {
    var disbDate : String?
    var scheme : String?
    var closureDt : String?
    var accountNo : String?
    var loanAmt : String?
    var branch : String?
    var lastPaymentDate : String?
    var product : String?
    var intRate : String?
    var lastPaidDate : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        disbDate <- map["DisbDate"]
        scheme <- map["Scheme"]
        closureDt <- map["ClosureDt"]
        accountNo <- map["AccountNo"]
        loanAmt <- map["LoanAmt"]
        branch <- map["Branch"]
        lastPaymentDate <- map["LastPaymentDate"]
        product <- map["Product"]
        intRate <- map["IntRate"]
        lastPaidDate <- map["LastPaidDate"]
    }

}
