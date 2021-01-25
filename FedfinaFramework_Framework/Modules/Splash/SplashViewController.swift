import Foundation
import UIKit
import ObjectMapper
class SplashViewController: UIViewController {
    
    var splashRouter: SplashRouter?
    var bundle: [String: Any] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureNavigationBar()
    }
    /// Function to configure navigation bar
    func configureNavigationBar() {
        navigationController?.isNavigationBarHidden = true
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_: Bool) {
        super.viewWillAppear(true)
        //adding listner for network status
        //ReachabilityManager.shared.addListener(listener: self )
        initViews()
        initData()
    }
    
    /// Function to initialize view components
    private func initViews() {
        
    }
    /// Function to call data or perform navigation action on viewWillAppear
    private func initData() {
        //SET PREFERENCE:-
             LCodeapppreference.setuserid(key: Constants.config.userID)//657296
             LCodeapppreference.setacntnumber(key: Constants.config.accountNumber)
             LCodeapppreference.settoken(key: Constants.config.token)
             LCodeapppreference.setdevid(key: Constants.config.deviceID)
        //LCodeapppreference.getReqrdType()//.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.bankdetailsKey)//---->Change HERE
        
        //-------------
        let randomstr = randomStringWithLength(length: 16)
        let TMP:String = randomstr + Constants.config.deviceID
        let encrypted = RSA.encryptString(TMP, publicKey: Constants.config.PUBKEY)//encryptString(string: TMP, publicKey: Constants.config.PUBKEY)
        LCodeapppreference.setfinalencrypt(key: "")
        
        self.view.startCirluarLoader()
        let parameters = [
            Constants.ApiConstants.dataKey: encrypted ?? "",
            Constants.ApiConstants.method_nameKey : Constants.ApiMethodName.initnatKey
            ] as [String: Any]
        //        var passmanager:LcodeNetworkManager;
        //        passmanager.lCodeGET_KEY(parameters: <#T##[String : Any]#>, completion: <#T##(String) -> ()#>)
        let ServerCallObj:LcodeNetworkManager = LcodeNetworkManager()
        ServerCallObj.lCodeGET_KEY(parameters: parameters) { (responseString) in
            self.view.stopLoading()
            if( responseString == Constants.ApiConstants.ApiResStatusCode.NetworkStatus){
                //--------------->self.showAlert(Title: Strings.appName, Message: Strings.no_internet)
            }
            print(responseString)
            LCodeapppreference.setfinalencrypt(key: LCodeAESTool.decryptData(responseString, withKey: randomstr))
            self.view.startCirluarLoader()
            let parameters:[String: Any] = [
                Constants.ApiConstants.method_nameKey : Constants.ApiMethodName.validateuserKey,
                Constants.ApiConstants.acnt_numberKey : "FEDRPM0GL1207343"
            ]
            let ServerCallObj:LcodeNetworkManager = LcodeNetworkManager()
            ServerCallObj.LCodeCprConnecionNoPServerCall(parameters: parameters) { (responseString) in
                DispatchQueue.main.async {
                    self.view.stopLoading()
                    if( responseString == Constants.ApiConstants.ApiResStatusCode.NetworkStatus){
                        //--------------->self.showAlert(Title: Strings.appName, Message: Strings.no_internet)
                    }
                    var deciptedResStr = ""
                    deciptedResStr = responseString
                    print(deciptedResStr)
                    if (deciptedResStr.trim() == Strings.session_expired){
                        //--------------->self.exitalert(Title: Strings.appName, Message: deciptedResStr)
                    }else{
                    let user = paymentResponse(JSONString: deciptedResStr )
                    LCodeapppreference.clearuno()
                    LCodeapppreference.setuno(key: user?.responseData?.uNO ?? "")
                    self.LoadScreen(Key: LCodeapppreference.getReqrdType(), ResponseJSONString: deciptedResStr)
                    //let user1 = Mapper<Main>().map(JSONString: deciptedResStr ?? "")
                }
                
                }
            }
        }
    }
    func LoadScreen(Key:String, ResponseJSONString:String){
//        switch Key {
//        case Constants.ApiConstants.ApiReqrdType.paymentKey:
//            self.bundle = [:]
//            self.bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.paynow,bundle: self.bundle)
//            break
//        case Constants.ApiConstants.ApiReqrdType.myloanKey:
//            self.bundle = [:]
//            self.bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.my_loans,bundle: self.bundle)
//            break
//        case Constants.ApiConstants.ApiReqrdType.accountdetailsKey:
//            self.bundle = [:]
//            self.bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.accountDetails,bundle: self.bundle)
//            break
//        case Constants.ApiConstants.ApiReqrdType.paymentstatusKey:
//            var bundle: [String: Any] = [:]
//            bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.paymentStatus,bundle: bundle)
//            break
//        case Constants.ApiConstants.ApiReqrdType.loanrepledgeKey:
//            self.bundle = [:]
//            self.bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.loan_repledge,bundle: self.bundle)
//            break
//        case Constants.ApiConstants.ApiReqrdType.repledgestatusKey:
//            self.bundle = [:]
//            self.bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.repledgeStatus,bundle: self.bundle)
//            break
//        case Constants.ApiConstants.ApiReqrdType.bankdetailsKey:
//            self.bundle = [:]
//            self.bundle = [
//                Constants.BundleConstants.responseStringKey: (ResponseJSONString)
//            ]
//            self.splashRouter?.navigateTo(destination:Destination.bankAcDetails,bundle: self.bundle)
//            break
//        default:
//            
//            break
//        }
    }
}
extension SplashViewController {
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //removing listner for network status
        
        //ReachabilityManager.shared.removeListener(listener: self )
    }
    
}
/*extension SplashViewController: NetworkStatusListener {
    
    func networkStatusDidChange(status: Reachability.NetworkStatus) {
        
        switch status {
        case .notReachable:
            debugPrint("ViewController: Network became unreachable")
            
        case .reachableViaWiFi:
            debugPrint("ViewController: Network reachable through WiFi")
        case .reachableViaWWAN:
            debugPrint("ViewController: Network reachable through Cellular Data")
        }
    }
}*/

