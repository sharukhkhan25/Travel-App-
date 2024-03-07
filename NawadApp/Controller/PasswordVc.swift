//
//  PasswordVc.swift
//  NawadApp
//
//  Created by Apple on 28/02/2023.
//

import UIKit

class PasswordVc: UIViewController {

    @IBOutlet weak var newpasswordTxt: UITextField!
    
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var confrmPasswordView: UIView!
    @IBOutlet weak var newpasswordView: UIView!
    @IBOutlet weak var confrmPasswordTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNextBtn()
        configurenewPasswordView()
        configureconfrmPassword()
        // Do any additional setup after loading the view.
    }
    func configureNextBtn()
    {
        NextBtn.layer.cornerRadius = 18
    }

    func configureconfrmPassword()
    {
        newpasswordView.layer.cornerRadius = 15
        newpasswordView.layer.borderWidth = 1
        newpasswordView.layer.borderColor = UIColor.white.cgColor
        newpasswordView.layer.shadowColor = UIColor.black.cgColor
        newpasswordView.layer.shadowOpacity = 0.4
        newpasswordView.layer.shadowRadius = 5.0
        newpasswordTxt.text = ""
        newpasswordTxt.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "passwordLogo")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        newpasswordTxt.leftViewMode = UITextField.ViewMode.always
        newpasswordTxt.leftView = view
    }
    
    func configurenewPasswordView() {
        confrmPasswordView.layer.cornerRadius = 15
        confrmPasswordView.layer.borderWidth = 1
        confrmPasswordView.layer.borderColor = UIColor.white.cgColor
        confrmPasswordView.layer.shadowColor = UIColor.black.cgColor
        confrmPasswordView.layer.shadowOpacity = 0.4
        confrmPasswordView.layer.shadowRadius = 5.0
        confrmPasswordTxt.text = ""
        confrmPasswordTxt.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "passwordLogo")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        confrmPasswordTxt.leftViewMode = UITextField.ViewMode.always
        confrmPasswordTxt.leftView = view
        
    }
}
