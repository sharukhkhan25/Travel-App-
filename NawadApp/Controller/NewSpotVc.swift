//
//  NewSpotVc.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit

class NewSpotVc: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var inernetspeed5: UIButton!
    
    
    
    @IBOutlet weak var inernetspeed4: UIButton!
    @IBOutlet weak var inernetspeed3: UIButton!
    
    @IBOutlet weak var inernetspeed2: UIButton!
    
    
    
    @IBOutlet weak var inernetspeed1: UIButton!
    
    @IBOutlet weak var submitbtn: UIButton!
    
    
    @IBOutlet weak var outletbutten0: UIButton!
  
    @IBOutlet weak var outletbutten2: UIButton!
    @IBOutlet weak var outletbutten4: UIButton!
    @IBOutlet weak var outletbutten3: UIButton!
   
    @IBOutlet weak var outlerbutten1: UIButton!
    
    var uploadimages = ["upload pictures 1","upload pictures 1"]
    
    @IBOutlet weak var uploadcollectionview: UICollectionView!
    var labels = ["Laptop friendly","Good Service","Cool vibe","Good Service","Cool vibe"]
    @IBOutlet weak var locationSearch: UITextField!
    
    @IBOutlet weak var AddTextField: UITextField!
    @IBOutlet weak var detailTextField: UITextView!
    
    @IBOutlet weak var goodcoffee: UIButton!
    @IBOutlet weak var laptopfrinedly: UIButton!
    
    @IBOutlet weak var comfort: UIButton!
    @IBOutlet weak var coolvibe: UIButton!
    @IBOutlet weak var GoodService: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePersonTxtView()
        configurebuttens()
        configureOutletsbuttens()
        configureTextViewDetails()
        configureAddTextField()
        configureinternetbutten()
        configureNextBtn()
        uploadcollectionview.delegate = self
        uploadcollectionview.dataSource = self
        // Do any additional setup after loading the view.
    }
    func configureinternetbutten()
    {
        inernetspeed1.layer.cornerRadius = 15
        inernetspeed2.layer.cornerRadius = 15
        inernetspeed3.layer.cornerRadius = 15
        inernetspeed4.layer.cornerRadius = 15
        inernetspeed5.layer.cornerRadius = 15
        
    }
    func configureNextBtn()
    {
        submitbtn.layer.cornerRadius = 18
    }
    
    
    
    
    
    func configureOutletsbuttens()
    {
        outletbutten0.layer.cornerRadius = 15
        outlerbutten1.layer.cornerRadius = 15
        outletbutten2.layer.cornerRadius = 15
        outletbutten4.layer.cornerRadius = 15
        outletbutten3.layer.cornerRadius = 15
    }
    
    
    @IBAction func outletbutten1(_ sender: Any) {
  
        
        
        
        
    }
    
    
    @IBAction func outletbutten2(_ sender: Any) {
   
    }
    
    @IBAction func outletbutten3(_ sender: Any) {
 
    }
    
    
    @IBAction func outletbutten4(_ sender: Any) {
 
        
    }
    
    func configurebuttens()
    {
        laptopfrinedly.layer.cornerRadius = 10
        comfort.layer.cornerRadius = 10
        coolvibe.layer.cornerRadius = 10
        GoodService.layer.cornerRadius = 10
        goodcoffee.layer.cornerRadius = 10
        laptopfrinedly.layer.borderColor = UIColor.black.cgColor
        comfort.layer.borderColor = UIColor.black.cgColor
        coolvibe.layer.borderColor = UIColor.black.cgColor
        GoodService.layer.borderColor = UIColor.black.cgColor
        goodcoffee.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
    @IBAction func submit(_ sender: Any)
    {
        
        
        
    }
    
    
    
    
    
    
    
    func configureAddTextField()
    {
        AddTextField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 23.0, height: 23.0))
        let image = UIImage(named: "search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: 41))
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        view.addSubview(imageView)
        AddTextField.rightViewMode = UITextField.ViewMode.always
        AddTextField.rightView = view
    }
    
    @IBAction func laptopfriendly(_ sender: Any) {
        
        laptopfrinedly.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        comfort.layer.backgroundColor = UIColor.white.cgColor
        coolvibe.layer.backgroundColor = UIColor.white.cgColor
        GoodService.layer.backgroundColor = UIColor.white.cgColor
        goodcoffee.layer.backgroundColor = UIColor.white.cgColor
        
    }
    
    @IBAction func goodservice(_ sender: Any) {
        
        laptopfrinedly.layer.backgroundColor = UIColor.white.cgColor
        comfort.layer.backgroundColor = UIColor.white.cgColor
        coolvibe.layer.backgroundColor = UIColor.white.cgColor
        GoodService.layer.backgroundColor =  UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        goodcoffee.layer.backgroundColor = UIColor.white.cgColor
    }
    
    @IBAction func coolvibe(_ sender: Any) {
        laptopfrinedly.layer.backgroundColor = UIColor.white.cgColor
        comfort.layer.backgroundColor = UIColor.white.cgColor
        coolvibe.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        GoodService.layer.backgroundColor =  UIColor.white.cgColor
        goodcoffee.layer.backgroundColor = UIColor.white.cgColor
    }
    
    @IBAction func goodcoffee(_ sender: Any) {
        
        laptopfrinedly.layer.backgroundColor = UIColor.white.cgColor
        comfort.layer.backgroundColor = UIColor.white.cgColor
        coolvibe.layer.backgroundColor = UIColor.white.cgColor
        GoodService.layer.backgroundColor =  UIColor.white.cgColor
        goodcoffee.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
    }
    
    @IBAction func confort(_ sender: Any) {
        laptopfrinedly.layer.backgroundColor = UIColor.white.cgColor
        comfort.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        coolvibe.layer.backgroundColor = UIColor.white.cgColor
        GoodService.layer.backgroundColor =  UIColor.white.cgColor
        goodcoffee.layer.backgroundColor = UIColor.white.cgColor
        
        
    }
    
    
    func configureTextViewDetails()
    {
//        detailTextField.layer.backgroundColor = UIColor(red: 245, green: 245, blue: 245, alpha: 1).cgColor
        detailTextField.layer.cornerRadius = 10
        detailTextField.layer.shadowColor = UIColor.black.cgColor
        detailTextField.layer.shadowOpacity = 0.1
    }
    
    
    func configurePersonTxtView()
    {
        locationSearch.text = ""
        locationSearch.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "orange search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(imageView)
        locationSearch.leftViewMode = UITextField.ViewMode.always
        locationSearch.leftView = view
    }
    
    func configureSearchTextField()
    {
        AddTextField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 23.0, height: 23.0))
        let image = UIImage(named: "search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: 41))
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        view.addSubview(imageView)
        AddTextField.rightViewMode = UITextField.ViewMode.always
        AddTextField.rightView = view
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return uploadimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UploadCollectionCell", for: indexPath) as! UploadCollectionCell
        
        cell.uploadphotos.image = UIImage(named: uploadimages[indexPath.row])
        return cell
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    
    
    
}
