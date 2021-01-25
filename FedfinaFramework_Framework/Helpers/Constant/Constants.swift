import Foundation

struct Constants {
    static let reachable:Reachability? = Reachability()
    struct Build {
        static let config = "production"//"dev"//"production"
    }
    
    struct URLs {
        struct BaseURL {
            static let api_version = "/api/v1"
        }
        
        struct DevServer {
            static let ip_address = ""
        }
        
        struct ProductionServer {
            static let ip_address = ""
        }
    }
    struct config {
        static let PUBKEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq1zZjFP0/O+r9orykWzF2DylkjfBhLhkuo2foaj7KuTVVa2dfVvHTYieaTOjTKBbwEpdHOdG1MrkcntP+PzkxnlhdP03UU4G+HwpCZB53aSPiIYHOQrRNgEDSYNk206BbFRYj0v2BmvFFzWrX6dHw4jt5pcfpf2vbJpKEoyztwtmPPOweONkkAk6iaDhvE3kTpWc+6+N/86cWYGarIO/crvw6jxj4ErOzFunA8ElkWTra00E79yliyO4j3ImHWkolapK4pRkrkw7HQs9yMeNVQlaW6ofik/4ZF1IX1radR8rW+kotQP+MNzU6PGnoIJ7hFEsKeZ4JY7Jg9P2w3i/kwIDAQAB"
        static let userID = "3639"
        static let accountNumber = "FEDRPM0GL1207343"
        static let token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijk1YzE0ZGYxNDlkNTRjMjc0Zjk2OWYyNTQwZWU0ZTczODVmMDhjZDJmY2JmN2NlNDIwZTE1ZDdiOWRhODNiNjZlNjJkMzYyZDYwNDE3MDk2In0.eyJhdWQiOiIxIiwianRpIjoiOTVjMTRkZjE0OWQ1NGMyNzRmOTY5ZjI1NDBlZTRlNzM4NWYwOGNkMmZjYmY3Y2U0MjBlMTVkN2I5ZGE4M2I2NmU2MmQzNjJkNjA0MTcwOTYiLCJpYXQiOjE2MDM3MDY0MDksIm5iZiI6MTYwMzcwNjQwOSwiZXhwIjoxNjAzNzA4MjA4LCJzdWIiOiI1NzYiLCJzY29wZXMiOltdfQ.l0Rk5mhFt3angqBADWqu4CutmQqpABXJPgLkdR2e_-IJgN0mduWv8Xu6Xt2RChx7LTtOZDmCSI-6LTXnN8_55Eo-0v5y6_6K_psxX653Yu2iCwTy-vJSid-qRUwqU9PHz30hhVGhE9-b9_s9GYw0j5UUUjHtnWg9NZGgNz4jNJc341JfLdeAuyOLqJbV_YarfUkAhIQ5bqtQBQfd2PMwPfPG6tgYRb1kGweqwoh5MIvhu-NRvg8yFB0uKPzAHMGrwS6yHdftDszqijRW6S3IPgdKhtczetY_fajVh53ppcr-LJxE1T_VmKE9HgOD1vM9gjfvrhgfqUokc6GAk9M_d-NyEUxjtRgsfte0UEDkRRCc6uD2SJoAr70oocUwaTqxg8gIH1sRt4_bPFgPhXxHnOVO6VK_xQ-Mhj35j7EL4nmaSPNGTRZvClc6bxEokzw6EdfqF6Uo2tHZ7cipWnbHvbkHNGrBrp_dk3Sxu85w0-kSKOCTjPN8Ph4XwMLUUn4iKLzhMS0SApyGyUuzKQrqerditLlkM8toatyKzV3lyptvNjfH4pd-jzHrZ8_TBnCXIst7ZijDUMeHF_xTDZTQjMJmfpsjugB3s5zI4Est48In8cJSyWYcCA1iF3KlmTDHTJo-BJy-uZYmsJ5engWromHUcefNNvvt3aaoSyxcsac"
        static let deviceID = "TESTIOSDEVID112222"
        static let option = "payment"
        static let fromOS = "IOS"
        static let build_version = "1"
        static let os_version = "NA"
        static let initnat = "INITNAT"
    }
    struct UserDefaults {
        static let token = "token"
    }
    struct ApiConstants {
        struct ApiResStatusCode {
            static let Status_404 = 404
            static let Status_0 = 0
            static let Status_503 = 503
            static let NetworkStatus = "505"
        }
        struct ApiErrorMsg {
            static let Status_404_msg = "Unable to contact server, could be due to maintenance"
            static let Status_0_msg = "Unable to contact server, Please Check your internet Connection"
            static let Status_503_msg = "The server is temporarily unable to service your request due to maintenance downtime or capacity problems. Please try again later."
            static let UprocessRqst = "Unable to process the request,Please try again."
        }
        struct ApiReqrdType {
            static let paymentKey = "payment"
            static let myloanKey = "my-loans"
            static let accountdetailsKey = "account-details"
            static let paymentstatusKey = "payment-status"
            static let loanrepledgeKey = "loan-repledge"
            static let repledgestatusKey = "repledge-status"
            static let bankdetailsKey = "bank-details"
        }
        struct ApiStausKeys {
            static let Pending = "P"
            static let Success = "S"
            static let Failure = "F"
            static let Reject = "R"
        }
        struct PennyStausKeys {
            static let Pending = "1"
            static let Success = "3"
            static let Failure = "2"
            static let karza_pending = "0"
            static let karza_Success = "1"
        }
        static let gcm_idKey = "GCM_ID"
        static let method_nameKey = "METHOD_NAME"
        static let tokenKey = "TOKEN"
        static let user_idKey = "USER_ID"
        static let unoKey = "UNO"
        static let imei_numberKey = "IMEI_NUMBER"
        static let uuidKey = "UUID"
        static let frm_osKey = "FRM_OS"
        static let req_typeKey = "REQ_TYPE"
        static let build_versionKey = "BUILD_VERSION"
        static let os_versionKey = "OS_VERSION"
        static let nattypeKey = "NATTYPE"
        static let datanatKey = "DATANAT"
        static let datanumKey = "DATANUM"
        static let dataKey = "DATA"
        static let acnt_numberKey = "ACNT_NUMBER"
        static let ref_num = "REF_NUM"
        static let img_type = "IMG_TYPE"
        static let img = "IMG"
        static let file_ext = "FILE_EXT"
        static let acnt_number = "ACNT_NUMBER"
        static let bank_name = "BANK_NAME"
        static let branch_name = "BRANCH_NAME"
        static let ifsc = "IFSC"
        static let benef = "BENEF"
        static let acnt_type = "ACNT_TYPE"
        static let email_id = "EMAIL_ID"
        static let req_type = "REQ_TYPE"
        static let trans_amount = "TRAN_AMOUNT"
        static let slab_jump_flg = "SLAB_JUMP_FLG"
        static let svhemeCodekey = "SCHEME_CODE"
        static let photokey = "PHOTO"
        static let gpckey = "GPC"
        static let passbookkey = "PASSBOOK"
        static let chequekey = "CHEQUE"
        static let imageFormatkey = "JPG"
        static let scheme_code_newkey = "SCHEME_CODE_NEW"
        static let topupamtkey = "TOPUPAMT"
        static let custstllstlkey = "CUST_STTL_SL"
        static let service_code = "SERVICE_CODE"
        
    }
    struct ApiMethodName {
        static let initnatKey = "INITNAT"
        static let validateuserKey = "validateUser"
        static let getPaymentStatusKey = "getPaymentStatus"
        static let uploadImageKey = "uploadImage"
        static let addBankAccountKey = "addBankAccount"
        static let getProsperDetailsKey = "getProsperDetails"
        static let getPaymentUrlKey = "getPaymentUrl"
        static let getSchemeInterestRateKey = "getSchemeInterestRate"
        static let getGpcPrintKey = "getGpcPrint"
        static let repledgeRequestKey = "repledgeRequest"
        static let pennyDropKey = "pennyDrop"
        static let ifscValidKey = "ifscValid"
    }
    struct BundleConstants {
        static let responseStringKey = "resStrKey"
        static let urlKey = "url"
        static let bankAcnumlKey = "bankAcnumlKey"
        static let AcnumKey = "Acnum"
        static let acTypeKey = "acType"
        static let ifsccodeKey = "ifsccode"
        static let banknameKey = "bankname"
        static let brachNameKey = "brachName"
        static let beneficiaryKey = "beneficiary"
        static let emailKey = "email"
        static let req_typeKey = "REQ_TYPE"
        static let trans_amountKey = "TRAN_AMOUNT"
        static let srnKey = "SRN"
        static let params = "PARAMS"
        static let index = "index"
        static let loan_repledgeArray = "loan_repledgeArray"
    }
    
    struct Languages {
        static let englishLanguage = "en"
        static let arabicLanguage = "ar"
    }
    
    struct WebLinks {
        static let Facebook_Link = "https://www.facebook.com/"
        static let Twitter_Link = "https://twitter.com/"
        static let Instagram_Link = "https://www.instagram.com/"
        static let Google_Link = "https://www.google.com"
        static let Terms_conditions = "https://www.fedfina.com/terms-conditions/"
    }
    
    struct StringConstants {
        static let NoNetwork = "Make sure your device is connected to the internet"
    }
    struct UniCode {
        static let Rupee  = "\u{20B9}"
    }
    struct IntLength {
        static let IFSCLENGTH = 11
        static let MAX50LEN = 50
        static let ACNTLENGTH = 25
        static let AMOUNTLENGTH = 15
    }
}
