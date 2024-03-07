//
//  ViewController.swift
//  NawadApp
//
//  Created by Apple on 28/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var googleSign: UIButton!
    
    @IBOutlet weak var createAccountlbl: UILabel!
    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var forgetpassword: UILabel!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var passwordTxtView: UIView!
    @IBOutlet weak var gmailTxtField: UITextField!
    @IBOutlet weak var gmailTxtView: UIView!
    @IBOutlet weak var LinkDin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureLoginBtn()
        configureGoogleBtn()
        configureLinKDinBtn()
        configuregmailTxtField()
        configurepasswordTxtField()
        addactionForgetpassword()
        addactionCreateAccountLabel()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func addactionForgetpassword()
    {
        forgetpassword.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(clickenventForget))
        forgetpassword.addGestureRecognizer(tap)
    }
    
    
    func addactionCreateAccountLabel()

    {
        createAccountlbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(clickenventCreate))
        createAccountlbl.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @objc func clickenventForget() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordVc") as! ForgotPasswordVc
        self.present(secondViewController, animated:true, completion:nil)
    }
    
    
    @objc func clickenventCreate() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpVc") as! SignUpVc
        self.present(secondViewController, animated:true, completion:nil)
    }
    
    
    func configureLoginBtn()
    {
        LoginBtn.layer.cornerRadius = 18
    }
 func configurepasswordTxtField ()
    {
        passwordTxtView.layer.cornerRadius = 15
        passwordTxtView.layer.borderWidth = 1
        passwordTxtView.layer.borderColor = UIColor.white.cgColor
        passwordTxtView.layer.shadowColor = UIColor.black.cgColor
        passwordTxtView.layer.shadowOpacity = 0.1
        passwordTxtView.layer.shadowRadius = 5.0
        passwordTxtField.text = "password"
        passwordTxtField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "passwordLogo")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        passwordTxtField.leftViewMode = UITextField.ViewMode.always
        passwordTxtField.leftView = view
    }
    
    
    
    
func configureGoogleBtn ()
    {
        googleSign.layer.cornerRadius = 23
        
    }
    func configureLinKDinBtn()
    {
        LinkDin.layer.cornerRadius = 23
    }
    
    func configuregmailTxtField()
    {
        
        gmailTxtView.layer.cornerRadius = 15
        gmailTxtView.layer.borderWidth = 1
        gmailTxtView.layer.borderColor = UIColor.white.cgColor
        gmailTxtView.layer.shadowColor = UIColor.black.cgColor
        gmailTxtView.layer.shadowOpacity = 0.1
        gmailTxtView.layer.shadowRadius = 5.0
        gmailTxtField.text = "mail@gmail.com"
        gmailTxtField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "messageTxtField")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        gmailTxtField.leftViewMode = UITextField.ViewMode.always
        gmailTxtField.leftView = view
    }

}

