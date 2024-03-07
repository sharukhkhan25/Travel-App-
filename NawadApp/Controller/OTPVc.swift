//
//  OTPVc.swift
//  NawadApp
//
//  Created by Apple on 28/02/2023.
//

import UIKit
import OTPFieldView

class OTPVc: UIViewController, OTPFieldViewDelegate {
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp: String) {
        print("OTP NUMBER \(otp)")
    }
    
    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        return true
    }
    
   
    @IBOutlet weak var NextBtn: UIButton!
    
    var otpTextFieldView: OTPFieldView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupOtpView()
        configureNextBtn()
        // Do any additional setup after loading the view.
    }
    func configureNextBtn()
    {
        NextBtn.layer.cornerRadius = 18
    }
    
    func setupOtpView(){
            otpTextFieldView = OTPFieldView(frame: CGRect(x: 49, y: 260, width: 285, height: 60))
            self.otpTextFieldView.fieldsCount = 6
        self.otpTextFieldView.fieldBorderWidth = 0.5
        self.otpTextFieldView.layer.shadowColor = UIColor.black.cgColor
        self.otpTextFieldView.layer.shadowOpacity = 0.5
            self.otpTextFieldView.defaultBorderColor = UIColor.white
            self.otpTextFieldView.filledBorderColor = UIColor.white
            self.otpTextFieldView.cursorColor = UIColor.black
        self.otpTextFieldView.displayType = .circular
            self.otpTextFieldView.fieldSize = 40
            self.otpTextFieldView.separatorSpace = 8
            self.otpTextFieldView.shouldAllowIntermediateEditing = false
            self.otpTextFieldView.delegate = self
            self.otpTextFieldView.initializeUI()
        self.view.addSubview(otpTextFieldView)
        }
  

}
