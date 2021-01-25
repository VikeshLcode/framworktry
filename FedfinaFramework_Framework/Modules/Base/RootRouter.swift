import Foundation
//import LGSideMenuController
import UIKit

enum Destination {
    case splash
//    case appflowone
//    case paynow
//    case paymentStatus
//    case bankAcDetails
//    case popupAlert
//    case addBank
//    case uploadBankDetails
//    case popupImage
//    case repledgeStatus
//    case accountDetails
//    case popupPaymentConfirm
//    case webView
//    case Entry
//    case my_loans
//    case loan_repledge
//    case ApplyloanRepledge
//    case popupMessage
}

public class RootRouter {
    public init() {}
    
    func showRootScreen(_ isSplash: Bool = true) {
        //if isSplash {
        //--------------->let viewController = makeViewController(for: Destination.Entry, bundle: [:])
        //--------------->showViewController(viewController, inWindow: AppDelegate.currentWindow)
        //} else {
        //  let viewController = makeViewController(for: Destination.splash, bundle: [:])
        //showViewController(viewController, inWindow: AppDelegate.currentWindow)
        //}
    }
    
    /**
     Function to initalize a view controller as Root view controller
     
     - Parameters:
     - viewController: UIViewController as rootViewController
     - inWindow: UIWindow as app current window
     */
    func showViewController(_ viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.isNavigationBarHidden = true
        inWindow.rootViewController = navigationController
        inWindow.makeKeyAndVisible()
    }
    
    func navigate(to destination: Destination, bundle: [String: Any], type: Int = 0) {
        if let topViewController = UIApplication.topViewController() {
            switch type {
            case 1:
                let viewController = makeViewController(for: destination, bundle: bundle)
                topViewController.navigationController?.pushViewController(viewController, animated: false)
            case 2:
                let viewController = makeViewController(for: destination, bundle: bundle)
                viewController.modalPresentationStyle = .overCurrentContext
                topViewController.present(viewController, animated: true, completion: nil)
            case 3:
                let viewController = makeViewController(for: destination, bundle: bundle)
                viewController.modalPresentationStyle = .overCurrentContext
                topViewController.present(viewController, animated: false, completion: nil)
            default:
                let viewController = makeViewController(for: destination, bundle: bundle)
                topViewController.navigationController?.pushViewController(viewController, animated: true)
            }
        }
    }
    
    private func makeViewController(for destination: Destination, bundle: [String: Any]) -> UIViewController {
        switch destination {
        case .splash:
            return SplashRouter.assembleModule(bundle: bundle)
//        case .appflowone:
//            return AppFlowOneRouter.assembleModule(bundle: bundle)
//        case .paynow:
//            return paynowRouter.assembleModule(bundle: bundle)
//        case .paymentStatus:
//            return paymentStatusRouter.assembleModule(bundle: bundle)
//        case .bankAcDetails:
//            return bankAcDetailsRouter.assembleModule(bundle: bundle)
//        case .popupAlert:
//            return popupAlertRouter.assembleModule(bundle: bundle)
//        case .addBank:
//            return addBankRouter.assembleModule(bundle: bundle)
//        case .uploadBankDetails:
//            return uploadBankDetailsRouter.assembleModule(bundle: bundle)
//        case .popupImage:
//            return popupImageRouter.assembleModule(bundle: bundle)
//        case .repledgeStatus:
//            return repledgeStatusRouter.assembleModule(bundle: bundle)
//        case .accountDetails:
//            return accountDetailsRouter.assembleModule(bundle: bundle)
//        case .popupPaymentConfirm:
//            return popupPaymentConfirmRouter.assembleModule(bundle: bundle)
//        case .webView:
//            return webViewRouter.assembleModule(bundle: bundle)
//        case .Entry:
//            return EntryRouter.assembleModule(bundle: bundle)
//        case .my_loans:
//            return my_loansRouter.assembleModule(bundle: bundle)
//        case .loan_repledge:
//            return loan_repledgeRouter.assembleModule(bundle: bundle)
//        case .ApplyloanRepledge:
//            return ApplyloanRepledgeRouter.assembleModule(bundle: bundle)
//        case .popupMessage:
//            return popupMessageRouter.assembleModule(bundle: bundle)
        }
        
    }
}

