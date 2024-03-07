//
//  GroupedVc.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit

class GroupedVc: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    var hotelimages = ["grouped hotel 1","grouped hotel 2","grouped hotel 3","grouped hotel 1","grouped hotel 2","grouped hotel 3"]
    
    @IBOutlet weak var searctTxtField: UITextField!
   
    @IBOutlet weak var citynameTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchTextField()
        citynameTable.delegate = self
        citynameTable.dataSource = self
        citynameTable.separatorStyle = .none
        citynameTable.rowHeight = UITableView.automaticDimension
        citynameTable.estimatedRowHeight = 30
        citynameTable.register(UINib(nibName: "GroupedHotelsCell", bundle: nil), forCellReuseIdentifier: "GroupedHotelsCell")
        citynameTable.reloadData()
        
        // Do any additional setup after loading the view.
    }
    func configureSearchTextField()
    {
        searctTxtField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 23.0, height: 23.0))
        let image = UIImage(named: "search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: 41))
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        view.addSubview(imageView)
        searctTxtField.rightViewMode = UITextField.ViewMode.always
        searctTxtField.rightView = view
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelimages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupedHotelsCell") as! GroupedHotelsCell
        cell.imageofhotels.image = UIImage(named: hotelimages[indexPath.row])
        let shadowPath2 = UIBezierPath(rect: cell.bounds)
        cell.contentbackground.layer.cornerRadius = 10
        cell.contentbackground.layer.masksToBounds = false
        cell.contentbackground.layer.shadowColor = UIColor.black.cgColor
        cell.contentbackground.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
        cell.contentbackground.layer.shadowOpacity = 0.1
        cell.contentbackground.layer.shadowPath = shadowPath2.cgPath
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
     func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return 140.0
        }
    
    
    
    
    
    
    
    
}
