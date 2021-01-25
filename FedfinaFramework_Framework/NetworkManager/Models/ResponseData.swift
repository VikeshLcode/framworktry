
import Foundation
import ObjectMapper

class ResponseData: Mappable {

    var uNO: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        uNO <- map["UNO"]
    }
}
