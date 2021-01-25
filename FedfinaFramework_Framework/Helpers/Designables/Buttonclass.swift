//
//  Buttonclass.swift
//  fedfina_test
//
//  Created by Swathi's Macbook on 27/11/20.
//  Copyright © 2020 Lcodetechnologies. All rights reserved.
//

import Foundation
import UIKit
class buttonUnderLine: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initialize()
    }

    func initialize() {
        self.setTitleColor(UIColor.FEDRED242_70_103, for: .normal)
    }
}
class btnPlainblue: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initialize()
    }

    func initialize() {
        self.setTitleColor(UIColor.FEDRED242_70_103, for: .normal)
    }
}
