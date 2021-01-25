import Foundation
import ObjectMapper

struct My_loans : Mappable {
    var closed : [Closed]?
    var active : [Active]?
    var responseCode : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        closed <- map["closed"]
        active <- map["active"]
        responseCode <- map["responseCode"]
    }

}
