import Foundation
import UIKit
class SplashRouter {
    /// Initialize Splash module
    weak var viewController: SplashViewController?
    var router: SplashRouter?
    static func assembleModule(bundle: [String: Any]) -> UIViewController {
        let viewController = SplashViewController(nibName: "SplashViewController", bundle: nil)
        let router = SplashRouter()
        router.viewController = viewController
        router.router = router
        viewController.bundle = bundle
        viewController.splashRouter = router
        return viewController
    }
    
    func navigateTo(destination: Destination, bundle: [String: Any]) {
        RootRouter().navigate(to: destination, bundle: bundle)
    }
}
