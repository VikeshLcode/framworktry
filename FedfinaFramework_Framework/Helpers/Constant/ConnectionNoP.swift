import Foundation

struct ConnectionNoP {
    static let Connectparameters: [String: Any] = [
        Constants.ApiConstants.gcm_idKey : "",
        Constants.ApiConstants.tokenKey : Constants.config.token,
        Constants.ApiConstants.user_idKey : Constants.config.userID,//
        Constants.ApiConstants.unoKey : LCodeapppreference.getuno(),//
        Constants.ApiConstants.imei_numberKey : Constants.config.userID,//
        Constants.ApiConstants.uuidKey : Constants.config.deviceID,//
        Constants.ApiConstants.frm_osKey : Constants.config.fromOS,//
        Constants.ApiConstants.req_typeKey : LCodeapppreference.getReqrdType(),//Constants.ApiConstants.ApiReqrdType.bankdetailsKey,//---->Change HERE
        Constants.ApiConstants.build_versionKey : Constants.config.build_version,//
        Constants.ApiConstants.os_versionKey : Constants.config.os_version,//
        Constants.ApiConstants.nattypeKey : Constants.config.initnat//
    ]
}
