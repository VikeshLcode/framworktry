import Foundation
import ObjectMapper

struct LoanRepledgeAccdetails : Mappable {
    var disbDate : String?
    var scheme : String?
    var interest_Due : String?
    var max_Online_Payable : String?
    var sRN : String?
    var other_Charges : String?
    var repledgeappl : String?
    var custId : String?
    var loanAmt : String?
    var branch : String?
    var total_Outstanding : String?
    var account_Number : String?
    var principalOs : String?
    var accured_Interest : String?
    var slabJumpAmount : String?
    var minimumpayble1 : String?
    var minimumpayble2 : String?
    var intRate : String?
    var maturityDate : String?
    var closureAmt : String?
    var closureAllow : String?
    var maxPayble : String?
    var custName : String?
    var lastPaid : String?
    var late_Payment : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        disbDate <- map["DisbDate"]
        scheme <- map["Scheme"]
        interest_Due <- map["Interest_Due"]
        max_Online_Payable <- map["Max_Online_Payable"]
        sRN <- map["SRN"]
        other_Charges <- map["Other_Charges"]
        repledgeappl <- map["Repledgeappl"]
        custId <- map["CustId"]
        loanAmt <- map["LoanAmt"]
        branch <- map["Branch"]
        total_Outstanding <- map["Total_Outstanding"]
        account_Number <- map["Account_Number"]
        principalOs <- map["PrincipalOs"]
        accured_Interest <- map["Accured_Interest"]
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
        late_Payment <- map["Late_Payment"]
    }

}

