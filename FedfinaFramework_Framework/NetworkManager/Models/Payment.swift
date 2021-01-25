
import Foundation
import ObjectMapper

class Payment: Mappable {

    var disbDate: String?
    var scheme: String?
    var interestDue: String?
    var maxOnlinePayable: String?
    var sRN: String?
    var otherCharges: String?
    var repledgeappl: String?
    var custId: String?
    var loanAmt: String?
    var branch: String?
    var totalOutstanding: String?
    var accountNumber: String?
    var principalOs: String?
    var accuredInterest: String?
    var slabJumpAmount: String?
    var minimumpayble1: String?
    var minimumpayble2: String?
    var intRate: String?
    var maturityDate: String?
    var closureAmt: String?
    var closureAllow: String?
    var maxPayble: String?
    var custName: String?
    var lastPaid: String?
    var latePayment: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        disbDate <- map["DisbDate"]
        scheme <- map["Scheme"]
        interestDue <- map["Interest_Due"]
        maxOnlinePayable <- map["Max_Online_Payable"]
        sRN <- map["SRN"]
        otherCharges <- map["Other_Charges"]
        repledgeappl <- map["Repledgeappl"]
        custId <- map["CustId"]
        loanAmt <- map["LoanAmt"]
        branch <- map["Branch"]
        totalOutstanding <- map["Total_Outstanding"]
        accountNumber <- map["Account_Number"]
        principalOs <- map["PrincipalOs"]
        accuredInterest <- map["Accured_Interest"]
        slabJumpAmount <- map["SlabJumpAmount"]
        minimumpayble1 <- map["Minimumpayble1"]
        minimumpayble2 <- map["Minimumpayble2"]
        intRate <- map["IntRate"]
        maturityDate <- map["MaturityDate"]
        closureAmt <- map["ClosureAmt"]
        closureAllow <- map["ClosureAllow"]
        maxPayble <- map["MaxPayble"]
        custName <- map["CustName"]
        lastPaid <- map["LastPaid"]
        latePayment <- map["Late_Payment"]
    }
}
