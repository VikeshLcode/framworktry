import Foundation
import ObjectMapper

struct partiPaymentStatusResponse : Mappable {
    var dETAILS : [partiPayDETAILS]?
    var responseCode : String?
    var errorMessage : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        dETAILS <- map["DETAILS"]
        responseCode <- map["responseCode"]
        errorMessage <- map["errorMessage"]
    }

}

