import Foundation
import ObjectMapper

struct successRes : Mappable {
    var successMessage : String?
    var responseCode : String?
    var errorMessage : String?
    var BankName : String?
    var BranchName : String?

    init?(map: Map) {

    }
    mutating func mapping(map: Map) {
        successMessage <- map["successMessage"]
        responseCode <- map["responseCode"]
        errorMessage <- map["errorMessage"]
        BankName <- map["BankName"]
        BranchName <- map["BranchName"]
    }
}

