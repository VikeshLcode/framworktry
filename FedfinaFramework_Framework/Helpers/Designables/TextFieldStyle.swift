//
//  TextFieldStyle.swift
//  fedfina_test
//
//  Created by Swathi's Macbook on 30/11/20.
//  Copyright © 2020 Lcodetechnologies. All rights reserved.
//

import Foundation
import UIKit

class IbTextfileld: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    func initialize() {
        self.font = UIFont(name: "Poppins-Medium", size: 14)
        self.textColor = UIColor.FED25_25_25
        //self.autocorrectionType = UITextAutocorrectionTypeNo;
        //self.labelPlaceholder.font = [UIFont fontWithName:POPREG size:12];
    }
}

class IbRoundedTextfiled: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    func initialize() {
        let bar = UIToolbar()
        let reset = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneTapped))
        reset.tintColor = UIColor.red
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelTapped))
        cancel.tintColor = UIColor.black
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        bar.items = [cancel,flexibleSpace,reset]
        bar.sizeToFit()
        
        self.inputAccessoryView = bar
        // self.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textColor = UIColor.FED25_25_25;
        self.placeholder = "Enter Amount";
        self.font = UIFont(name: "Poppins-Regular", size: 14)
        self.layer.borderColor=UIColor.FEDBLUE.cgColor
        self.layer.borderWidth=1;
        self.layer.cornerRadius=5;
        self.keyboardType = .numberPad;
        
    }
    @objc func doneTapped(){
        self.resignFirstResponder()
    }
    @objc func cancelTapped(){
        self.text = ""
        self.resignFirstResponder()
    }
    let padding = UIEdgeInsets(top: 5, left: 15, bottom: 6, right: 15);
    // Paddging for place holder
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    // Padding for text
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    // Padding for text in editting mode
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}

class IbRoundedPlainTextfiled: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    func initialize() {
        let bar = UIToolbar()
        let reset = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneTapped))
        reset.tintColor = UIColor.red
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelTapped))
        cancel.tintColor = UIColor.black
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        bar.items = [cancel,flexibleSpace,reset]
        bar.sizeToFit()
        
        self.inputAccessoryView = bar
        // self.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textColor = UIColor.FED25_25_25;
        self.placeholder = "Enter Amount";
        self.font = UIFont(name: "Poppins-Regular", size: 14)
        self.layer.borderColor=UIColor.black.cgColor
        self.layer.borderWidth=0.6;
        self.layer.cornerRadius=7;
        self.keyboardType = .numberPad;
        
    }
    @objc func doneTapped(){
        self.resignFirstResponder()
    }
    @objc func cancelTapped(){
        self.text = ""
        self.resignFirstResponder()
    }
    let padding = UIEdgeInsets(top: 5, left: 15, bottom: 6, right: 15);
    // Paddging for place holder
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    // Padding for text
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    // Padding for text in editting mode
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}


