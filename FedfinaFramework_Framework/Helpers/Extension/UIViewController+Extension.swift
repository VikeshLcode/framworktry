//
//  UIViewController+Extension.swift
//  Thalassemia_iOS
//
//  Created by MacBook Pro on 7/20/20.
//  Copyright © 2020 Monasabatna. All rights reserved.
//

import Foundation
import UIKit
//
//import ACFloatingTextfield_Objc

extension UIViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
//    func setTextbox(textfieldName:ACFloatingTextField, placeholderText:String,ImageName:String,isdropdown:Bool){
//        textfieldName.delegate =  (self as! UITextFieldDelegate)
//        textfieldName.lineColor = UIColor.FED211_211_211
//        textfieldName.selectedLineColor = UIColor.FED211_211_211
//        textfieldName.selectedPlaceHolderColor = UIColor.FEDGREY_171_171_171
//        textfieldName.placeholder = placeholderText
//        textfieldName.textColor = UIColor.FED25_25_25;
//        textfieldName.font = UIFont(name: "Poppins-Regular", size: 14)
//        if(isdropdown){
//            textfieldName.rightView = UIImageView(image: #imageLiteral(resourceName: ImageName))
//            textfieldName.rightView?.frame = CGRect(x: 0, y: 0, width: 15 , height:15)
//            textfieldName.rightView?.contentMode = .scaleToFill
//            textfieldName.rightViewMode = .always
//        }
//        
//    }
    func getNamePrefix(name: String) -> String {
        var firstTwoChar = ""
        let wordArray = name.split(separator: " ")
        if wordArray.count == 1 {
            firstTwoChar = String(wordArray[0].first!)
        }
        if wordArray.count == 2 {
            firstTwoChar = String(wordArray[0].first!) + String(wordArray[1].first!)
        }
        if wordArray.count >= 3 {
            firstTwoChar = String(wordArray[0].first!) + String(wordArray[1].first!)+firstTwoChar + String(wordArray[2].first!)
        }
        //        else{
        //            firstTwoChar = name.first
        //        }
        return firstTwoChar.uppercased()
        
    }
    
    func setNavigationItem(topnavbar:UINavigationBar) {
        topnavbar.barTintColor = UIColor.white
        topnavbar.backgroundColor = UIColor.white
        topnavbar.isTranslucent = true
        
        let navItem = UINavigationItem(title: "")
        
        let leftbuttonItem = UIBarButtonItem(image: UIImage(named: "Group 11783.jpg"), style: .plain, target: self, action:#selector(menuTapped))
        let leftimageView1 = UIImageView(image: UIImage(named: "Group 71.jpg"))
        let leftbuttonItem1 = UIBarButtonItem(customView: leftimageView1)
        
        navItem.leftBarButtonItems = [leftbuttonItem,leftbuttonItem1]
        
        let rightbuttonItem = UIBarButtonItem(image: UIImage(named: "notification.jpg"), style: .done, target: self, action:#selector(notificationTapped))
        
        let button = UIButton(type: .custom)
        let name = getNamePrefix(name: "pili cat")
        button.setTitle(name, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 13)
        button.layer.cornerRadius = 15
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.NavbarPink
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        button.addTarget(self, action: #selector(notificationTapped), for: UIControl.Event.touchUpInside)
        let rightbuttonItem1 = UIBarButtonItem(customView: button)
        navItem.rightBarButtonItems = [rightbuttonItem1,rightbuttonItem]
        
        
        
        topnavbar.setItems([navItem], animated: true)
        
        let gesture = UISwipeGestureRecognizer(target: self, action:#selector(goBack))
        view.addGestureRecognizer(gesture)
    }
    func setNavigationItem1(topnavbar:UINavigationBar) {
        topnavbar.barTintColor = UIColor.white
        topnavbar.backgroundColor = UIColor.white
        topnavbar.isTranslucent = true
        
        let navItem = UINavigationItem(title: "")
        
        let leftbuttonItem = UIBarButtonItem(image: UIImage(named: "Group 14446.jpg"), style: .plain, target: self, action:#selector(goBack))
        leftbuttonItem.tintColor = UIColor.MAINCOLOR
        let leftimageView1 = UIImageView(image: UIImage(named: "Group 71.jpg"))
        let leftbuttonItem1 = UIBarButtonItem(customView: leftimageView1)
        
        navItem.leftBarButtonItems = [leftbuttonItem,leftbuttonItem1]
        
        topnavbar.setItems([navItem], animated: true)
    }
    @objc func menuTapped(){
        //--------------->showAlert(Title: Strings.appName, Message: "")
    }
    @objc func notificationTapped(){
        //--------------->showAlert(Title: Strings.appName, Message: "")
    }
    @objc func goBack(){
        self.navigationController?.popViewController(animated: true)
    }
    
    func setStatusBarColor(){
        if #available(iOS 13.0, *) {
            let app = UIApplication.shared
            let statusBarHeight: CGFloat = app.statusBarFrame.size.height
            
            let statusbarView = UIView()
            statusbarView.backgroundColor = UIColor.statusColor
            view.addSubview(statusbarView)
            
            statusbarView.translatesAutoresizingMaskIntoConstraints = false
            statusbarView.heightAnchor
                .constraint(equalToConstant: statusBarHeight).isActive = true
            statusbarView.widthAnchor
                .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
            statusbarView.topAnchor
                .constraint(equalTo: view.topAnchor).isActive = true
            statusbarView.centerXAnchor
                .constraint(equalTo: view.centerXAnchor).isActive = true
            
        } else {
            let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
            statusBar?.backgroundColor = UIColor.statusColor
        }
    }
    func randomStringWithLength(length: Int) -> String {
        let allowedChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz!@#$%^&*().,:;!@#$%^&*().,:;"
        let allowedCharsCount = UInt32(allowedChars.count)
        var randomString = ""
        
        for _ in 0 ..< length {
            let randomNum = Int(arc4random_uniform(allowedCharsCount))
            let randomIndex = allowedChars.index(allowedChars.startIndex, offsetBy: randomNum)
            let newCharacter = allowedChars[randomIndex]
            randomString += String(newCharacter)
        }
        
        return randomString
    }
    func getCurrentMillis()->Int64{
        return  Int64(NSDate().timeIntervalSince1970 * 1000)
    }
    func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    func openCamera()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.allowsEditing = true
            imagePicker.cameraCaptureMode = .photo
            imagePicker.modalPresentationStyle = .custom
            imagePicker.view.frame = view.bounds
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func openGallery()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have permission to access gallery.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
//    func showAlert(Title:String, Message:String){
//        let VC = popupMessageViewController()
//        VC.header = Title
//        VC.desc = Message
//        VC.modalPresentationStyle = .overCurrentContext
//        VC.modalTransitionStyle = .crossDissolve
//        VC.bundle = [:]
//        self.present(VC, animated: false, completion: nil)
//    }
//    func exitalert(Title:String, Message:String){
//        let VC = popUpwithcallbackViewController()
//        VC.header = Title
//        VC.desc = Message
//        VC.callbackClosure = {[weak self] in
//            exit(0);
//        }
//        VC.modalPresentationStyle = .overCurrentContext
//        VC.modalTransitionStyle = .crossDissolve
//        VC.bundle = [:]
//        self.present(VC, animated: false, completion: nil)
//    }
    
    func showAlert1(Title:String, Message:String){
        let alertController = UIAlertController(title: Title, message: Message, preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        }
        alertController.addAction(action1)
        self.present(alertController, animated: true, completion: nil)
    }
    func StringToInt(strVal:String)->Int{
        let stringVal:NSString = NSString(string: strVal)
        let value = (stringVal).integerValue
        return value
    }
    func StringToDouble(strVal:String)->Double{
        let stringVal:NSString = NSString(string: strVal)
        let value = (stringVal).doubleValue
        return value
    }
    func removeFirst(name: String) -> String {
        return String(name.dropFirst())
    }
    func uploadImage(img:UIImage) -> String {
        //---------------------------------------------
        //Use pngData() to get data of PNG image,
        //Use jpegData(compressionQuality: 1) or jpegData(compressionQuality: 0) to get data of JPG image.
        //---------------------------------------------
        //Get data of existing UIImage
        let imageData = img.jpegData(compressionQuality: 1)
        
        // Convert image Data to base64 encodded string
        let imageBase64String = imageData?.base64EncodedString()
        print(imageBase64String ?? "Could not encode image to Base64")
        return imageBase64String ?? ""
    }
    ///----------------------------------------------
    func hideNavigationBar(){
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    func showNavigationBar() {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func showToast(message : String) {
        //        let toast = MDToast(text: message, duration: 2.0)
        //        toast.show()
    }
    
    func activityIndicatorStart() {
        let myActivityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        myActivityIndicator.center = view.center
        myActivityIndicator.hidesWhenStopped = false
        myActivityIndicator.startAnimating()
        view.addSubview(myActivityIndicator)
        
    }
    
    func activityIndicatorStop() {
        let myActivityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        myActivityIndicator.center = view.center
        myActivityIndicator.hidesWhenStopped = false
        myActivityIndicator.stopAnimating()
        view.addSubview(myActivityIndicator)
        
    }
    
}

extension UIViewController {
    
    func dismissAll(animated: Bool, completion: (() -> Void)? = nil) {
        if let optionalWindow = UIApplication.shared.delegate?.window, let window = optionalWindow, let rootViewController = window.rootViewController, let presentedViewController = rootViewController.presentedViewController  {
            if let snapshotView = window.snapshotView(afterScreenUpdates: false) {
                presentedViewController.view.addSubview(snapshotView)
                presentedViewController.modalTransitionStyle = .coverVertical
            }
            if !isBeingDismissed {
                rootViewController.dismiss(animated: animated, completion: completion)
            }
        }
    }
    
}

extension UITableViewCell{
    func StringToInt(strVal:String)->Int{
        let stringVal:NSString = NSString(string: strVal)
        let value = (stringVal).integerValue
        return value
    }
    func getNamePrefix(name: String) -> String {
        var firstTwoChar = ""
        let wordArray = name.split(separator: " ")
        if wordArray.count >= 2 {
            firstTwoChar = String(wordArray[0].first!)+String(wordArray[1].first!)
            print(firstTwoChar)
        }else{
            firstTwoChar = name.first
        }
        return firstTwoChar.uppercased()
        
    }
}
