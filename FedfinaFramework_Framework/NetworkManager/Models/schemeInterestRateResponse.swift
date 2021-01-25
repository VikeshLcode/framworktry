
import Foundation
import ObjectMapper

struct schemeInterestRateResponse : Mappable {
    var iNTDETAILS : [INTDETAILS]?
    var otherDetails : [OtherDetails]?
    var chargeDetails : [ChargeDetails]?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        iNTDETAILS <- map["INTDETAILS"]
        otherDetails <- map["OtherDetails"]
        chargeDetails <- map["ChargeDetails"]
        responseCode <- map["responseCode"]
    }

}

