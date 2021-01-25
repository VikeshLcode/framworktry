import UIKit
import IHKeyboardAvoiding
//import ACFloatingTextfield_Objc
//import CZPicker
class EntryViewController: UIViewController {
    
    var router: EntryRouter?
    var bundle: [String: Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }
    /// Function to configure navigation bar
    func configureNavigationBar() {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_: Bool) {
        super.viewWillAppear(true)
        initViews()
        initData()
    }
    /// Function to initialize view components
    private func initViews() {
        
    }
    
    /// Function to call data or perform navigation action on viewWillAppear
    private func initData() {
        
    }
    @IBAction func payment_click(_ sender: Any) {
//        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.paymentKey)
//        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
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
                    //self.LoadScreen(Key: LCodeapppreference.getReqrdType(), ResponseJSONString: deciptedResStr)
                    //let user1 = Mapper<Main>().map(JSONString: deciptedResStr ?? "")
                }
                
                }
            }
        }
    }
    @IBAction func myLoanClick(_ sender: Any) {
        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.myloanKey)
        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
    }
    @IBAction func accountDetailClick(_ sender: Any) {
        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.accountdetailsKey)
        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
    }
    @IBAction func paymentStatuClick(_ sender: Any) {
        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.paymentstatusKey)
        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
    }
    @IBAction func loanRepledgeClick(_ sender: Any) {
        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.loanrepledgeKey)
        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
    }
    @IBAction func RepledgeStatusClick(_ sender: Any) {
        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.repledgestatusKey)
        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
    }
    @IBAction func BankDetailClcik(_ sender: Any) {
        LCodeapppreference.setReqrdType(key: Constants.ApiConstants.ApiReqrdType.bankdetailsKey)
        self.router?.navigateTo(destination:Destination.splash,bundle: self.bundle)
    }
}

extension EntryViewController {
}
