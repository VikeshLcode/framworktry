
import Foundation
import ObjectMapper

struct Repledge_status : Mappable {
    var dETAILS : [DETAILS]?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        dETAILS <- map["DETAILS"]
    }

}

