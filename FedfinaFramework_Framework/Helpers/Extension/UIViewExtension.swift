//
//  UIViewExtension.swift
//  Thalassemia_iOS
//
//  Created by MacBook Pro on 7/12/20.
//  Copyright © 2020 Monasabatna. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addShadow() {
      layer.shadowColor = UIColor.lightGray.cgColor
      layer.shadowOpacity = 0.5
      layer.shadowOffset = CGSize(width: 0, height: 1)
      layer.shadowRadius = 4
      layer.cornerRadius = 16
      layer.backgroundColor = UIColor.white.cgColor
    }
    
    func addShadow_withCR(cornerRadius:CGFloat,shadow:CGFloat) {
         layer.shadowColor = UIColor.lightGray.cgColor
         layer.shadowOpacity = 0.5
         layer.shadowOffset = CGSize(width: 0, height: 1)
         layer.shadowRadius = shadow
         layer.cornerRadius = cornerRadius

    }
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 4
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func carddropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 2
        layer.cornerRadius = 5
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func addViewRoundedCR(height:CGFloat){
           self.layer.cornerRadius = height/2
           self.clipsToBounds = true
       }
       func addViewCR(cornerRadius:CGFloat){
           self.layer.cornerRadius = cornerRadius
           self.clipsToBounds = true
       }
    func leftViewSet(scale: Bool = true) {
        layer.cornerRadius = 5
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    
    func rightViewSet(scale: Bool = true) {
        layer.cornerRadius = 5
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    
    func headerViewSet(scale: Bool = true) {
        layer.cornerRadius = 30
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    
//    func setBorder(scale: Bool = true){
//        layer.cornerRadius = 5
//        layer.borderWidth = 1
//        layer.borderColor = UIColor.viewColor.cgColor
//    }
//    
//    func setBorderAge(scale: Bool = true)
//    {
//        layer.cornerRadius = 5
//        layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
//        layer.borderWidth = 1
//        layer.borderColor = UIColor.viewColor.cgColor
//    }
//    
//    func setBorderChange(scale: Bool = true){
//        layer.cornerRadius = 5
//        layer.borderWidth = 1
//        layer.borderColor = UIColor.changePasswordViewColor.cgColor
//    }
//    
//    func setNoSelectionColor(scale: Bool = true){
//        layer.borderColor = UIColor.noSelectionColor.cgColor
//    }
    
}
