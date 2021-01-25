
import Foundation
import ObjectMapper

struct getGpcPrintResponse : Mappable {
    var gPC_IMAGE : String?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        gPC_IMAGE <- map["GPC_IMAGE"]
        responseCode <- map["responseCode"]
    }

}

