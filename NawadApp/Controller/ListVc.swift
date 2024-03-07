//
//  ListVc.swift
//  NawadApp
//
//  Created by Apple on 08/03/2023.
//

import UIKit

class ListVc: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    var hotelimages = ["famoushotels","hotel 2","famoushotels","hotel 2","famoushotels","hotel 2"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelimages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotelPlacescell") as! HotelPlaces
        cell.hotelimages.image = UIImage(named: hotelimages[indexPath.section])
        let shadowPath2 = UIBezierPath(rect: cell.bounds)
        cell.contentbackgroundView.layer.cornerRadius = 10
        cell.contentbackgroundView.layer.masksToBounds = false
        cell.contentbackgroundView.layer.shadowColor = UIColor.black.cgColor
        cell.contentbackgroundView.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
        cell.contentbackgroundView.layer.shadowOpacity = 0.1
        cell.contentbackgroundView.layer.shadowPath = shadowPath2.cgPath
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    @IBOutlet weak var popularHotelsnametableView: UITableView!
    
    
   
    @IBOutlet weak var buttenscollectios: UICollectionView!
    
    var labels = ["Laptop friendly","Good Service","Cool vibe","Good Service","Cool vibe"]
    
    @IBOutlet weak var searchTxtfield: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configureLeftSearchTextField()
        configurationTxtField()
        buttenscollectios.delegate = self
        buttenscollectios.dataSource = self
        popularHotelsnametableView.delegate = self
        popularHotelsnametableView.dataSource = self
        popularHotelsnametableView.rowHeight = UITableView.automaticDimension
        popularHotelsnametableView.estimatedRowHeight = 45
        popularHotelsnametableView.register(UINib(nibName: "HotelPlaces", bundle: nil), forCellReuseIdentifier: "HotelPlacescell")
        popularHotelsnametableView.separatorStyle = .none
        
        popularHotelsnametableView.reloadData()
        
    }
    func configurationTxtField()
    {
        searchTxtfield.text = ""
        searchTxtfield.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 20.0, height: 20.0))
        let image = UIImage(named: "search 1")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        view.addSubview(imageView)
        searchTxtfield.leftViewMode = UITextField.ViewMode.always
        searchTxtfield.leftView = view
    }
    
    func configureLeftSearchTextField()
    {
        searchTxtfield.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 12.0, y: 8.0, width: 14.0, height: 17.0))
        let image = UIImage(named: "Vector 3")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 36, height: 36))
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        view.addSubview(imageView)
        searchTxtfield.rightViewMode = UITextField.ViewMode.always
        searchTxtfield.rightView = view
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtenCells", for: indexPath) as! ButtenCells
        cell.buttenlabels.text = labels[indexPath.row]
        cell.buttenView.layer.masksToBounds = true
        cell.buttenView.layer.cornerRadius = 10
        cell.buttenView.layer.borderColor = UIColor.black.cgColor
        cell.buttenView.layer.borderWidth = 0.25
        cell.layer.shadowOpacity = 0
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    var lastIndexactive : IndexPath = [1 ,0]
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if lastIndexactive != indexPath
        {
            //Selected Butten
            let cell = collectionView.cellForItem(at: indexPath) as! ButtenCells
            cell.buttenView.layer.masksToBounds = true
            cell.buttenView.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1)
            // Unselected Butten
            let cell1 = collectionView.cellForItem(at: self.lastIndexactive) as? ButtenCells
            cell1?.buttenView.layer.masksToBounds = true
            cell1?.buttenView.backgroundColor = UIColor.white
            self.lastIndexactive = indexPath
        }
    }
    
    
    
    
    
}
