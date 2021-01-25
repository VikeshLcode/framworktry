import Foundation
import ObjectMapper

struct accountdetailsResponse : Mappable {
    var responseData : ResponseData?
    var account_details : [Account_details]?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        responseData <- map["responseData"]
        account_details <- map["account-details"]
        responseCode <- map["responseCode"]
    }

}

