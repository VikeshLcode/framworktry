//
//  UIButton+Extension.swift
//  LcodeBase
//
//  Created by Swathi's Macbook on 01/12/20.
//  Copyright © 2020 Monasabatna. All rights reserved.
//

import Foundation
import UIKit
extension UIButton {
    func addButtonRoundedCR(height:CGFloat){
        self.layer.cornerRadius = height/2
        self.clipsToBounds = true
    }
    func addButtonCR(cornerRadius:CGFloat){
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    func addButtonCRwithBorder(cornerRadius:CGFloat,color:UIColor){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 1
        self.layer.borderColor = color.cgColor
        self.clipsToBounds = true
    }
    
}
