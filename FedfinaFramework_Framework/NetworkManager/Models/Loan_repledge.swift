import Foundation
import ObjectMapper

struct Loan_repledge : Mappable {
    var newLoanAmt : String?
    var max_Loan_Amt : String?
    var eligbleTopUpAmt : String?
    var eligibleAmt : String?
    var multiplesOf : String?
    var receiptAmt : String?
    var lTV : String?
    var scemeName : String?
    var iNT_RT : String?
    var schemeCode : String?
    var charges : String?
    var schemeTenor : String?
    var schemeSelected : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        newLoanAmt <- map["NewLoanAmt"]
        max_Loan_Amt <- map["Max_Loan_Amt"]
        eligbleTopUpAmt <- map["EligbleTopUpAmt"]
        eligibleAmt <- map["EligibleAmt"]
        multiplesOf <- map["MultiplesOf"]
        receiptAmt <- map["ReceiptAmt"]
        lTV <- map["LTV"]
        scemeName <- map["ScemeName"]
        iNT_RT <- map["INT_RT"]
        schemeCode <- map["SchemeCode"]
        charges <- map["Charges"]
        schemeTenor <- map["SchemeTenor"]
        schemeSelected <- map["SchemeSelected"]
    }

}

