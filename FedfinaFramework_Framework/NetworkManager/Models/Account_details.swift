import Foundation
import ObjectMapper

struct Account_details : Mappable {
    var scheme : String?
    var customer_Name : String?
    var next_Due_Date : String?
    var last_Payment_Date : String?
    var rOI : String?
    var outstanding_Amt : String?
    var responseCode : String?
    var loan_Amt : String?
    var branch : String?
    var customer_ID : String?
    var last_Paid_Date : String?
    var rPTDETAILS : [RPTDETAILS]?
    var account_Number : String?
    var disbursement_Date : String?
    var next_Interest_Payable_Amt : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        scheme <- map["Scheme"]
        customer_Name <- map["Customer_Name"]
        next_Due_Date <- map["Next_Due_Date"]
        last_Payment_Date <- map["Last_Payment_Date"]
        rOI <- map["ROI"]
        outstanding_Amt <- map["Outstanding_Amt"]
        responseCode <- map["responseCode"]
        loan_Amt <- map["Loan_Amt"]
        branch <- map["Branch"]
        customer_ID <- map["Customer_ID"]
        last_Paid_Date <- map["Last_Paid_Date"]
        rPTDETAILS <- map["RPTDETAILS"]
        account_Number <- map["Account_Number"]
        disbursement_Date <- map["Disbursement_Date"]
        next_Interest_Payable_Amt <- map["Next_Interest_Payable_Amt"]
    }

}

