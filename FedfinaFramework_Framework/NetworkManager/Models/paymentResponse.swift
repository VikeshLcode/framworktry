import Foundation
import ObjectMapper

class paymentResponse: Mappable {

    var responseData: ResponseData?
    var payment: [Payment]?
    var responseCode: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        responseData <- map["responseData"]
        payment <- map["payment"]
        responseCode <- map["responseCode"]
    }
}


