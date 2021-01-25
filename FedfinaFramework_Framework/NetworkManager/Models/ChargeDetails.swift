import Foundation
import ObjectMapper

struct ChargeDetails : Mappable {
    var chargeDetails : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        chargeDetails <- map["ChargeDetails"]
    }

}

