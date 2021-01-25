import Foundation
import ObjectMapper

struct PaymentUrlResponse : Mappable {
    var responseCode : String?
    var URL : String?
    var PARAMS : String?
    init?(map: Map) {

    }
    mutating func mapping(map: Map) {
        responseCode <- map["responseCode"]
        URL <- map["URL"]
        PARAMS <- map["PARAMS"]
    }
}

