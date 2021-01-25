import Foundation
import ObjectMapper

struct paymentstatusResponse : Mappable {
    var accdetails : [Accdetails]?
    var responseData : ResponseData?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        accdetails <- map["accdetails"]
        responseData <- map["responseData"]
        responseCode <- map["responseCode"]
    }

}
