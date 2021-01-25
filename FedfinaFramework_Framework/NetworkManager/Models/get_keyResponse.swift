import Foundation
import ObjectMapper
class get_keyResponse: Mappable{
    var DATARESP: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        DATARESP <- map["DATARESP"]
    }
}


class LoginResponse1: Mappable{
    var DATA: String?
    var errorMessage: String?
    var responseCode: String?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        DATA <- map["DATA"]
        errorMessage <- map["errorMessage"]
        responseCode <- map["responseCode"]

    }
}


