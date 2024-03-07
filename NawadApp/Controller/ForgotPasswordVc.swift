//
//  ForgotPasswordVc.swift
//  NawadApp
//
//  Created by Apple on 28/02/2023.
//

import UIKit

class ForgotPasswordVc: UIViewController {

    @IBOutlet weak var gmailView: UIView!
    
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var gmailTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configuregmailTxtField()
        configureNextBtn()
        // Do any additional setup after loading the view.
    }
    func configureNextBtn()
    {
        NextBtn.layer.cornerRadius = 18
    }
    func configuregmailTxtField()
    {
        
        gmailView.layer.cornerRadius = 18
        gmailView.layer.borderWidth = 1
        gmailView.layer.borderColor = UIColor.white.cgColor
        gmailView.layer.shadowColor = UIColor.black.cgColor
        gmailView.layer.shadowOpacity = 0.4
        gmailView.layer.shadowRadius = 5.0
       
        gmailTxtField.text = ""
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
