
import Foundation
import ObjectMapper

struct OtherDetails : Mappable {
    var annualROI : String?
    var miniMumDays : String?
    var delayDetails : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        annualROI <- map["AnnualROI"]
        miniMumDays <- map["MiniMumDays"]
        delayDetails <- map["DelayDetails"]
    }

}
