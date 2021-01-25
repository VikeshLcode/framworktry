import Foundation
import ObjectMapper

struct PennyResponse : Mappable {
    var PennyDropStatus : String?
    var responseCode : String?
    var PennyDropMsg : String?
    init?(map: Map) {

    }
    mutating func mapping(map: Map) {
        PennyDropStatus <- map["PennyDropStatus"]
        responseCode <- map["responseCode"]
        PennyDropMsg <- map["PennyDropMsg"]
    }
}

