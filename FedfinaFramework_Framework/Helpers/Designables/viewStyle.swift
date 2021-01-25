//
//  viewStyle.swift
//  fedfina_test
//
//  Created by Swathi's Macbook on 27/11/20.
//  Copyright © 2020 Lcodetechnologies. All rights reserved.
//

import Foundation
import UIKit
class viewStyle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initialize()
    }
    
    init() {
        super.init(frame: .zero)
        
        self.initialize()
    }
    
    func initialize() {
        self.layer.cornerRadius = 5
        self.layer.backgroundColor = UIColor.FED249_250_252.cgColor
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.FED211_211_211.cgColor
    }
}
