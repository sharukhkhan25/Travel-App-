//
//  ProfileViewController.swift
//  NawadApp
//
//  Created by Apple on 10/03/2023.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
 
    
    var settingicons = ["contact us","settingstar","privacy"]
    var settinglabel = ["Contact Us","Share and Get Points","Privacy"]
    var profileimages = ["profileHotel","profilehotel1","profileHotel","profilehotel1"]
    @IBOutlet weak var profileimage: UIImageView!
    
    @IBOutlet weak var photographerlbl: UILabel!
    
    @IBOutlet weak var settingtableview: UITableView!
    @IBOutlet weak var visitedplacescollectionView: UICollectionView!
    @IBOutlet weak var profiletextfiew: UITextView!
    @IBOutlet weak var seolbl: UILabel!
    @IBOutlet weak var profilename: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        visitedplacescollectionView.delegate = self
        visitedplacescollectionView.dataSource = self
        settingtableview.delegate = self
        settingtableview.dataSource = self
        settingtableview.separatorStyle = .none
        settingtableview.rowHeight = UITableView.automaticDimension
        settingtableview.estimatedRowHeight = 30
        settingtableview.register(UINib(nibName: "SettingCellTableView", bundle: nil), forCellReuseIdentifier: "SettingCellTableView")
        settingtableview.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VisitedPlacesCell", for: indexPath) as! VisitedPlacesCell
        cell.profilehotelimages.image = UIImage(named: profileimages[indexPath.row])
        cell.transparentview.layer.cornerRadius = 10
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingicons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCellTableView") as! SettingCellTableView
        cell.settingicons.image = UIImage(named: settingicons[indexPath.row])
        cell.backgroundview.layer.cornerRadius = 10
        cell.settinglbl.text = settinglabel[indexPath.row]
        return cell
    }
}
