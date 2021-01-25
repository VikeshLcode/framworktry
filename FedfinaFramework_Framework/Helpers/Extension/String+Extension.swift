//
//  String+Extension.swift
//  Thalassemia_iOS
//
//  Created by MacBook Pro on 7/20/20.
//  Copyright © 2020 Monasabatna. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    // validate PhoneNumber
    var isPhoneNumber: Bool {
        let charcterSet = NSCharacterSet(charactersIn: "+0123456789").inverted
        let inputString = components(separatedBy: charcterSet)
        let filtered = inputString.joined(separator: "")
        return self == filtered
    }
    
    // validate Number
    var isNumber: Bool {
        let charcterSet = NSCharacterSet(charactersIn: "0123456789").inverted
        let inputString = components(separatedBy: charcterSet)
        let filtered = inputString.joined(separator: "")
        return self == filtered
    }
    
    // validate Email ID
    var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    //Validate Password
    func isValidPassword() -> Bool {
        //safe to escape all regex chars
        let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[ !\"\\\\#$%&'\\(\\)\\*+,\\-\\./:;<=>?@\\[\\]^_`\\{|\\}~])[A-Za-z\\d !\"\\\\#$%&'\\(\\)\\*+,\\-\\./:;<=>?@\\[\\]^_`\\{|\\}~]{8,}"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    
    //Validate Phone Numeber
    var isValidMobileNo: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count && self.count == 9
                
            }
            else
            {
                return false
            }
        }
        catch {
            return false
        }
    }
    
    //TextField length Validation - Length should only alphabets between 3 to 30
    
    func isNameLenth(name: String) -> Bool {
        if name.count >= 3 && name.count <= 30{
            return true
        }else{
            return false
        }
    }
    
    //TextField length Validation - Length should only alphabets between 3 to 35
    
    func isNameLenthCard(name: String) -> Bool {
        if name.count >= 3 && name.count <= 35{
            return true
        }else{
            return false
        }
    }
    
    
    
    var first: String {
        return String(prefix(1))
    }
    
    var uppercaseFirst: String {
        return first.uppercased() + String(dropFirst())
    }
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
}

