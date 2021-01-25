
import Foundation
import ObjectMapper

struct MyloansResponse : Mappable {
    var my_loans : [My_loans]?
    var responseData : ResponseData?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        my_loans <- map["my-loans"]
        responseData <- map["responseData"]
        responseCode <- map["responseCode"]
    }

}
