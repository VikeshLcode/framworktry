import Foundation
import ObjectMapper

struct loanrepledgeResponse : Mappable {
    var accDetails : [LoanRepledgeAccdetails]?
    var responseData : ResponseData?
    var bank_details : [Bank_details]?
    var responseCode : String?
    var loan_repledge : [Loan_repledge]?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        accDetails <- map["accDetails"]
        responseData <- map["responseData"]
        bank_details <- map["bank-details"]
        responseCode <- map["responseCode"]
        loan_repledge <- map["loan-repledge"]
    }

}
