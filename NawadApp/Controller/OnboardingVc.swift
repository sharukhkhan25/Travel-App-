//
//  OnboardingVc.swift
//  NawadApp
//
//  Created by Apple on 28/02/2023.
//

import UIKit

class OnboardingVc: UIViewController {

    
    @IBOutlet weak var skipBtn: UIButton!
    
    @IBOutlet weak var GotitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureGotitBtn()
        configureSkipBtn()
        // Do any additional setup after loading the view.
    }
    func configureSkipBtn()
    {
        skipBtn.layer.cornerRadius = 17
    }
    
    func configureGotitBtn()
    {
        GotitBtn.layer.cornerRadius = 18
    }
}
