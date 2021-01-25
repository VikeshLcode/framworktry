import Foundation
import ObjectMapper

struct KarzaResponse : Mappable {
    var KarzaStatus : String?
    var successMessage : String?
    var responseCode : String?
    var KarzaMsg : String?
    init?(map: Map) {

    }
    mutating func mapping(map: Map) {
        KarzaStatus <- map["KarzaStatus"]
        successMessage <- map["successMessage"]
        responseCode <- map["responseCode"]
        KarzaMsg <- map["KarzaMsg"]
    }
}

