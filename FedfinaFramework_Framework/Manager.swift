//
//  Manager.swift
//  FedfinaFramework_Framework
//
//  Created by Vikesh Macbook on 24/01/21.
//

import Foundation
import UIKit
public class Manager{
    public init(){
    }
    public func viewController() -> UIViewController{
        let bundle = Bundle(for: EntryViewController.self)
        let vc = EntryViewController(nibName: "EntryViewController", bundle: bundle)
        return vc
    }
}
