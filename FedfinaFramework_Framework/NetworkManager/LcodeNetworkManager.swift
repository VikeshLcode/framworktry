import Foundation
import Alamofire
import SwiftyJSON
import AlamofireObjectMapper
import UIKit
import ReachabilitySwift
class LcodeNetworkManager {
    //static let shared = LcodeNetworkManager()
    let reachability = Reachability()
    func getCurrentMillis()->Int64{
        return  Int64(NSDate().timeIntervalSince1970 * 1000)
    }
    
    func lCodeGET_KEY(parameters: [String: Any],  completion: @escaping(String)->())
    {
        
        let Parameters = parameters
        
        let cookieJar = HTTPCookieStorage.shared
        for cookie in cookieJar.cookies!
        {
            cookieJar.deleteCookie(cookie)
        }
        if reachability?.isReachable == true {
            Alamofire.request("https://uatgold.fedfina.com/ReachMB/servlet/NativeServlet01?ts=\(String(getCurrentMillis()))", method: .post, parameters: Parameters, headers: nil).responseObject { ( response: DataResponse < get_keyResponse>) in
                switch response.result
                {
                case .success: if let json = response.result.value
                {
                    let json = JSON(json)
                    print(json)
                    print("success")
                    let Response = response.result.value
                    completion(Response?.DATARESP ?? "")
                    
                    }
                case.failure( _):
                    var complisionMsg = ""
                    if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_404){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_404),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_404_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_404_msg)}"
                    }else if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_0){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_0),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)}"
                    }else if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_503){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_503),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_503_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_503_msg)}"
                    }else{
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_0),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)}"
                    }
                    completion(complisionMsg)
                }
            }
            
        }
        else {
            let complisionMsg = Constants.ApiConstants.ApiResStatusCode.NetworkStatus
            completion(complisionMsg)
        }
    }
    func LCodeCprConnecionNoPServerCall(parameters: [String: Any],  completion: @escaping(String)->())
    {
        var Parameters:[String: Any] = ConnectionNoP.Connectparameters
        
        Parameters.merge(dict: parameters)
        if let theJSONData = try? JSONSerialization.data(
            withJSONObject: Parameters,
            options: []) {
            let EncrypitedDate = LCodeAESTool.getvalindataencrypt(theJSONData, key: LCodeapppreference.getfinalencrypt())
            let NSDict2:NSMutableDictionary = [
                Constants.ApiConstants.datanatKey :EncrypitedDate ?? [] ,
                Constants.ApiConstants.datanumKey : Constants.config.deviceID
            ]
            if reachability?.isReachable == true {
                Alamofire.request("https://uatgold.fedfina.com/ReachMB/servlet/NativeServlet01?ts=\(String(getCurrentMillis()))", method: .post, parameters: NSDict2 as! Parameters, headers: nil).responseObject { ( response: DataResponse < LoginResponse1>) in
                    switch response.result
                    {
                    case .success: if let json = response.result.value
                    {
                        let json = JSON(json)
                        print(json)
                        print("success")
                        let Response = response.result.value
                        var deciptedResStr = ""
                        deciptedResStr = LCodeAESTool.decryptData(Response?.DATA ?? "", withKey: LCodeapppreference.getfinalencrypt())
                        
                        if(deciptedResStr == ""){
                            if ((Response?.responseCode == Constants.ApiConstants.ApiStausKeys.Failure)){
                                completion(Response?.errorMessage ?? Strings.session_expired_login)
                            }
                        }else{
                            completion(deciptedResStr)
                        }
                        }
                    case.failure(let error): print(error)
                    var complisionMsg = ""
                    if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_404){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_404),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_404_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_404_msg)}"
                    }else if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_0){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_0),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)}"
                    }else if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_503){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_503),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_503_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_503_msg)}"
                    }else{
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_0),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)}"
                    }
                    completion(complisionMsg)
                    }
                }
            }
            else{
                let complisionMsg = Constants.ApiConstants.ApiResStatusCode.NetworkStatus
                completion(complisionMsg)
                
            }
        }
    }
    func LCodeCprConnecionServerCall(parameters: [String: Any],  completion: @escaping(String)->())
    {
        if reachability?.isReachable == true {
            var Parameters:[String: Any] = Connection.Connectparameters
            Parameters.merge(dict: parameters)
            if let theJSONData = try? JSONSerialization.data(
                withJSONObject: Parameters,
                options: []) {
                let EncrypitedDate = LCodeAESTool.getvalindataencrypt(theJSONData, key: LCodeapppreference.getfinalencrypt())
                let NSDict2:NSMutableDictionary = [
                    Constants.ApiConstants.datanatKey :EncrypitedDate ?? [] ,
                    Constants.ApiConstants.datanumKey : LCodeapppreference.getdevid()
                ]
                Alamofire.request("https://uatgold.fedfina.com/ReachMB/servlet/NativeServlet01?ts=\(String(getCurrentMillis()))", method: .post, parameters: NSDict2 as! Parameters, headers: nil).responseObject { ( response: DataResponse < LoginResponse1>) in
                    switch response.result
                    {
                    case .success: if let json = response.result.value
                    {
                        let json = JSON(json)
                        print(json)
                        print("success")
                        let Response = response.result.value
                        var deciptedResStr = ""
                        deciptedResStr = LCodeAESTool.decryptData(Response?.DATA ?? "", withKey: LCodeapppreference.getfinalencrypt())
                        
                        if(deciptedResStr == ""){
                            if ((Response?.responseCode == Constants.ApiConstants.ApiStausKeys.Failure)){
                                completion(Response?.errorMessage ?? Strings.session_expired_login)
                            }
                        }else{
                            completion(deciptedResStr)
                        }
                        }
                    case.failure(let error): print(error)
                    var complisionMsg = ""
                    if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_404){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_404),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_404_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_404_msg)}"
                    }else if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_0){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_0),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)}"
                    }else if(response.response?.statusCode == Constants.ApiConstants.ApiResStatusCode.Status_503){
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_503),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_503_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_503_msg)}"
                    }else{
                        complisionMsg = "{\"responseCode\":\(Constants.ApiConstants.ApiResStatusCode.Status_0),\"errorMessage\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)),\"error\":\(Constants.ApiConstants.ApiErrorMsg.Status_0_msg)}"
                    }
                    completion(complisionMsg)
                    }
                }
            }
        }else{
            let complisionMsg = Constants.ApiConstants.ApiResStatusCode.NetworkStatus
            completion(complisionMsg)
        }
    }
}
extension Dictionary {
    mutating func merge(dict: [Key: Value]){
        for (k, v) in dict {
            updateValue(v, forKey: k)
        }
    }
}
