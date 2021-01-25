import Foundation
import ObjectMapper

struct RPTDETAILS : Mappable {
    var principal_Amount : String?
    var interest_Amount : String?
    var charges_Amount : String?
    var penal_Amount : String?
    var receipt_Date : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        principal_Amount <- map["Principal_Amount"]
        interest_Amount <- map["Interest_Amount"]
        charges_Amount <- map["Charges_Amount"]
        penal_Amount <- map["Penal_Amount"]
        receipt_Date <- map["Receipt_Date"]
    }

}

