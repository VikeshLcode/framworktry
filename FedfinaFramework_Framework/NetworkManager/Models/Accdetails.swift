import Foundation
import ObjectMapper

struct Accdetails : Mappable {
    var interestDue : String?
    var disbDate : String?
    var scheme : String?
    var lastPayment : String?
    var penalCharges : String?
    var accountNo : String?
    var product : String?
    var principalDue : String?
    var intRate : String?
    var chargesDue : String?
    var toatalDue : String?
    var loanAmt : String?
    var branch : String?
    var principalOs : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        interestDue <- map["InterestDue"]
        disbDate <- map["DisbDate"]
        scheme <- map["Scheme"]
        lastPayment <- map["LastPayment"]
        penalCharges <- map["PenalCharges"]
        accountNo <- map["AccountNo"]
        product <- map["Product"]
        principalDue <- map["PrincipalDue"]
        intRate <- map["IntRate"]
        chargesDue <- map["ChargesDue"]
        toatalDue <- map["ToatalDue"]
        loanAmt <- map["LoanAmt"]
        branch <- map["Branch"]
        principalOs <- map["PrincipalOs"]
    }

}

