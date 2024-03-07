//
//  CostumTabBarController.swift
//  NawadApp
//
//  Created by Apple on 06/03/2023.
//

import UIKit

class CostumTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = UIColor.white
        self.tabBar.layer.masksToBounds = true
//        self.tabBar.isTranslucent = true
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
       
    }

}
