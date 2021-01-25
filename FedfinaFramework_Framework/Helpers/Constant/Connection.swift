import Foundation

struct Connection {
    static let Connectparameters: [String: Any] = [
        Constants.ApiConstants.frm_osKey : Constants.config.fromOS,
        Constants.ApiConstants.build_versionKey : Constants.config.build_version,
        Constants.ApiConstants.nattypeKey : Constants.config.initnat,
        Constants.ApiConstants.imei_numberKey : Constants.config.deviceID,
        Constants.ApiConstants.user_idKey : Constants.config.userID,
        Constants.ApiConstants.unoKey : LCodeapppreference.getuno(),
        Constants.ApiConstants.uuidKey : Constants.config.deviceID,
        Constants.ApiConstants.os_versionKey : Constants.config.os_version,
    ]
}
