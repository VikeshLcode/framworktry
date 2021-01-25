import Foundation
import UIKit

class EntryRouter {
    weak var viewController: EntryViewController?
    var router: EntryRouter?
    static func assembleModule(bundle: [String: Any]) -> UIViewController {
        let viewController = EntryViewController(nibName: "EntryViewController", bundle: nil)
        let router = EntryRouter()
        router.viewController = viewController
        router.router = router
        viewController.bundle = bundle
        viewController.router = router
        return viewController
    }
    
    func navigateTo(destination: Destination, bundle: [String: Any]) {
        RootRouter().navigate(to: destination, bundle: bundle)
    }
}
