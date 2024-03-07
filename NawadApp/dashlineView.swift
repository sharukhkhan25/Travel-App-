//
//  dashlineView.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit

class dashlineView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurationView()
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configurationView()
       
    }
   
    
    
    func configurationView()
    {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
        self.layer.shadowOpacity = 0.1
    }
}
