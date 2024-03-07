//
//  PhoneNumberView.swift
//  NawadApp
//
//  Created by Apple on 11/03/2023.
//

import UIKit

class PhoneNumberView: UIView {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configurationView()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configurationView()
    }
    
    func configurationView()
    {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 20

       
    }

}
