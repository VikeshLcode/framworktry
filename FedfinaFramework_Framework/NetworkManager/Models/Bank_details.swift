import Foundation
import ObjectMapper

struct Bank_details : Mappable {
    var bankName : String?
    var aCNT_NUMBER : String?
    var accountSerial : String?
    var branchName : String?
    var accountType : String?
    var ifsc : String?
    var beneficName : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        bankName <- map["BankName"]
        aCNT_NUMBER <- map["ACNT_NUMBER"]
        accountSerial <- map["AccountSerial"]
        branchName <- map["BranchName"]
        accountType <- map["AccountType"]
        ifsc <- map["Ifsc"]
        beneficName <- map["BeneficName"]
    }

}
