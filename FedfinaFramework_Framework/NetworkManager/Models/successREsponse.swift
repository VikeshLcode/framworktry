import Foundation
import ObjectMapper

struct successREsponse : Mappable {
    var responseCode : String?
    var REF_NUM : String?
    init?(map: Map) {

    }
    mutating func mapping(map: Map) {
        responseCode <- map["responseCode"]
        REF_NUM <- map["REF_NUM"]
    }
}

