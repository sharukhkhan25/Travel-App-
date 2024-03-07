//
//  SignUpVc.swift
//  NawadApp
//
//  Created by Apple on 28/02/2023.
//

import UIKit

class SignUpVc: UIViewController {

    
    @IBOutlet weak var gmailTxtView: UIView!
    
    @IBOutlet weak var gmailTxtField: UITextField!
    @IBOutlet weak var personTxtField: UITextField!
    @IBOutlet weak var personView: UIView!
    @IBOutlet weak var Loginlbl: UILabel!
    @IBOutlet weak var NextBtn: UIButton!
  
    @IBOutlet weak var confrmTxtField: UITextField!
    @IBOutlet weak var conformpasswordView: UIView!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var phoneTxtField: UITextField!
    
    
    
    @IBOutlet weak var phoneTxtView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurerightIcon()
        configureSearchTextField()
        configurePersonTxtView()
        configurenewPasswordView()
        configuregmailTxtField()
        configurephoneTxtField()
        configureconfrmPassword()
        configureNextBtn()
        addactionForgetpassword()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    func addactionForgetpassword()
    {
        Loginlbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(clickenvent))
        Loginlbl.addGestureRecognizer(tap)
    }
    
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @objc func clickenvent() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(secondViewController, animated:true, completion:nil)
           
        
    }
    
    
    
    func configureNextBtn()
    {
        NextBtn.layer.cornerRadius = 18
    }
    
    
    func configurePersonTxtView()
    {
        personView.layer.cornerRadius = 15
        personView.layer.borderWidth = 1
        personView.layer.borderColor = UIColor.white.cgColor
        personView.layer.shadowColor = UIColor.black.cgColor
        personView.layer.shadowOpacity = 0.1
        personView.layer.shadowRadius = 5.0
        personTxtField.text = ""
        personTxtField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "person")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        personTxtField.leftViewMode = UITextField.ViewMode.always
        personTxtField.leftView = view
    }
    
    
    
    
    func configureconfrmPassword()
    {
        conformpasswordView.layer.cornerRadius = 15
        conformpasswordView.layer.borderWidth = 1
        conformpasswordView.layer.borderColor = UIColor.white.cgColor
        conformpasswordView.layer.shadowColor = UIColor.black.cgColor
        conformpasswordView.layer.shadowOpacity = 0.1
        conformpasswordView.layer.shadowRadius = 5.0
        confrmTxtField.text = ""
        confrmTxtField.layer.masksToBounds = false
        let imageView1 = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image1 = UIImage(named: "passwordLogo")
        imageView1.image = image1
        imageView1.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView1)
        confrmTxtField.leftViewMode = UITextField.ViewMode.always
        confrmTxtField.leftView = view
        
    }
    
    
    
    
    
    func configurenewPasswordView() {
        passwordView.layer.cornerRadius = 15
        passwordView.layer.borderWidth = 1
        passwordView.layer.borderColor = UIColor.white.cgColor
        passwordView.layer.shadowColor = UIColor.black.cgColor
        passwordView.layer.shadowOpacity = 0.1
        passwordView.layer.shadowRadius = 5.0
        passwordTxtField.text = ""
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
    
    
    
    
    func configurephoneTxtField()
    {
        phoneTxtView.layer.cornerRadius = 15
        phoneTxtView.layer.borderWidth = 1
        phoneTxtView.layer.borderColor = UIColor.white.cgColor
        phoneTxtView.layer.shadowColor = UIColor.black.cgColor
        phoneTxtView.layer.shadowOpacity = 0.1
        phoneTxtView.layer.shadowRadius = 5.0
        phoneTxtField.text = "mail@gmail.com"
        phoneTxtField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "phone")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        phoneTxtField.leftViewMode = UITextField.ViewMode.always
        phoneTxtField.leftView = view
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
  
    func configureSearchTextField()
    {
       
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 12.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "eye")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let parentview = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 41))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: 41))
        view.layer.backgroundColor = UIColor.clear.cgColor
        view.layer.cornerRadius = 10
        view.addSubview(imageView)
        parentview.addSubview(view)
        passwordTxtField.rightViewMode = UITextField.ViewMode.always
        passwordTxtField.rightView = parentview
    }
    
    func configurerightIcon()
    {
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 12.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "eye")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let parentview = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 41))
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: 41))
        view1.layer.backgroundColor = UIColor.clear.cgColor
        view1.layer.cornerRadius = 10
        view1.addSubview(imageView)
        parentview.addSubview(view1)
        confrmTxtField.rightViewMode = UITextField.ViewMode.always
        confrmTxtField.rightView = parentview
    }
    

}
