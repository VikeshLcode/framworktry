//import Foundation
//
struct LCodeapppreference {
    static var finalencrypt:String?
    static var uno:String?
    static var userid:String?
    static var acntnumber:String?
    static var token:String?
    static var devid:String?
    static var ReqrdType:String?
    
    //----------
    static func setfinalencrypt(key: String){
        finalencrypt = key
    }
    static func getfinalencrypt()->String{
        return finalencrypt ?? ""
    }
    static func clearfinalencrypt(){
        finalencrypt = ""
    }
    //----------
    static func setuno(key: String){
        uno = key
    }
    static func getuno()->String{
        return uno ?? ""
    }
    static func clearuno(){
        uno = ""
    }
    //-----------
    
    static func setuserid(key: String){
        userid = key
    }
    static func getuserid()->String{
        return userid ?? ""
    }
    static func clearuserid(){
        userid = ""
    }
    //-----------
    
    static func setacntnumber(key: String){
        acntnumber = key
    }
    static func getacntnumber()->String{
        return acntnumber ?? ""
    }
    static func clearacntnumber(){
        acntnumber = ""
    }
    //-----------
    
    static func settoken(key: String){
        token = key
    }
    static func gettoken()->String{
        return token ?? ""
    }
    static func cleartoken(){
        token = ""
    }
    //-----------
    
    static func setdevid(key: String){
        devid = key
    }
    static func getdevid()->String{
        return devid ?? ""
    }
    static func cleardevid(){
        devid = ""
    }
    //-----------
    
    static func setReqrdType(key: String){
        ReqrdType = key
    }
    static func getReqrdType()->String{
        return ReqrdType ?? ""
    }
    static func clearReqrdType(){
        ReqrdType = ""
    }
    //-----------
    
    
}
//-->>USE
//LCodeapppreference.setToken(token: "Hi")
//LCodeapppreference.getToken()
//LCodeapppreference.clearToken()
