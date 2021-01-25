import Foundation
import ObjectMapper

struct NetworkErrorRes : Mappable {
    var error : String?
    var responseCode : String?
    var errorMessage : String?
    init?(map: Map) {

    }
    mutating func mapping(map: Map) {
        error <- map["error"]
        responseCode <- map["responseCode"]
        errorMessage <- map["errorMessage"]
    }
}


