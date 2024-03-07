//
//  ViewPagerCostumview.swift
//  NawadApp
//
//  Created by Apple on 17/03/2023.
//

import UIKit

class ViewPagerCostumview: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configurationView()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configurationView()
    }
    
    func configurationView()
    {   self.clipsToBounds = true
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 23
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
        self.layer.shadowOpacity = 0.2
    }
}
