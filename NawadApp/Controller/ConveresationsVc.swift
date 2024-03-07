//
//  ConveresationsVc.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit

class ConveresationsVc: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var userimages = ["User 1","user 4","user 5","user 6","user 7","user 8"]
    var usernames = ["James","Abram Geidt","Skylar Curtis","Gustavo Westervelt","Ann Saris","Aspen Dias"]

    @IBOutlet weak var userstableview: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchTextField()
        userstableview.delegate = self
        userstableview.dataSource = self
        userstableview.separatorStyle = .none
        userstableview.rowHeight = UITableView.automaticDimension
        userstableview.estimatedRowHeight = 30
        userstableview.register(UINib(nibName: "ConversationCell", bundle: nil), forCellReuseIdentifier: "ConversationCell")
        userstableview.reloadData()
        // Do any additional setup after loading the view.
    }
    

    func configureSearchTextField()
    {
        searchTextField.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 9, y: 9, width: 19, height: 19))
        let image = UIImage(named: "search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let parentview = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 41))
        let view = UIView(frame: CGRect(x: 0, y: 2, width: 37, height: 37))
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        view.layer.cornerRadius = 11
        view.addSubview(imageView)
        parentview.addSubview(view)
        searchTextField.rightViewMode = UITextField.ViewMode.always
        searchTextField.rightView = parentview
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return userimages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConversationCell") as! ConversationCell
        cell.userimages.image = UIImage(named: userimages[indexPath.row])
        
        cell.usernames.text = usernames[indexPath.row]
        cell.userbackground.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
        cell.userbackground.layer.cornerRadius = 15
        cell.userbackground.layer.masksToBounds = false
        cell.userbackground.layer.shadowColor = UIColor.black.cgColor
        cell.userbackground.layer.shadowOpacity = 0.1
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
//
     func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return 0
        }
    
    
}
