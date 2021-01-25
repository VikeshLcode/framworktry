import Foundation
import ObjectMapper

struct repledgestatusResponse : Mappable {
    var repledge_status : [Repledge_status]?
    var responseData : ResponseData?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        repledge_status <- map["repledge-status"]
        responseData <- map["responseData"]
        responseCode <- map["responseCode"]
    }

}

