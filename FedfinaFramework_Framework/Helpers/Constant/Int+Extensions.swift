import Foundation
import UIKit
extension Int{
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(from: NSNumber(value: self)) ?? ""//Formatter.withSeparator.string(for: self) ?? ""
        //
    }
}
