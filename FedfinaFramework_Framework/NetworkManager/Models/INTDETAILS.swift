
import Foundation
import ObjectMapper

struct INTDETAILS : Mappable {
    var uptoDays : String?
    var intRt : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        uptoDays <- map["UptoDays"]
        intRt <- map["IntRt"]
    }

}

