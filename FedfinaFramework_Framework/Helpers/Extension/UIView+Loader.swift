import UIKit
import Foundation
import JTMaterialSpinner
extension UIView{
    func startCirluarLoader() {
        let BgViewHEIGHT = 40
        let BgViewWIDTH = 40
        
        let backgroundView = UIView()
        backgroundView.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        backgroundView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        backgroundView.tag = 475647

        let ParentbgView = UIView()
        ParentbgView.frame = CGRect(x: 0, y: 0, width: BgViewWIDTH, height: BgViewHEIGHT)
        ParentbgView.backgroundColor = UIColor.white
        ParentbgView.layer.cornerRadius = ParentbgView.bounds.height / 2
        ParentbgView.center = self.center
        backgroundView.addSubview(ParentbgView)
        
        
        let spinnerView = JTMaterialSpinner()
        backgroundView.addSubview(spinnerView)
        spinnerView.frame = CGRect(x: ((self.bounds.width / 2) - ((CGFloat(BgViewWIDTH) - 10))/2), y: ((self.bounds.height / 2) - ((CGFloat(BgViewWIDTH) - 10))/2), width: (CGFloat(BgViewWIDTH) - 10), height: (CGFloat(BgViewHEIGHT) - 10))
        spinnerView.circleLayer.lineWidth = 3.0
        spinnerView.circleLayer.strokeColor = UIColor.blue.cgColor
        spinnerView.backgroundColor = UIColor.white;
        spinnerView.layer.cornerRadius = spinnerView.bounds.height / 2
        spinnerView.beginRefreshing()
        self.addSubview(backgroundView)
    }
    func stopLoading() {
        if let background = viewWithTag(475647){
            background.removeFromSuperview()
        }
        self.isUserInteractionEnabled = true
    }
}
