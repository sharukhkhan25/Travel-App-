//
//  HomeViewController.swift
//  NawadApp
//
//  Created by Apple on 05/03/2023.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   

    @IBOutlet weak var searchTxtFiels: UITextField!
    
var storiesimages = ["User 1","User 2","User 3","User 1","User 2","User 3"]
var popularhotelImages = ["hotel1","hotel1","hotel1","hotel1","hotel1","hotel1","hotel1"]
var newlocationsImages = ["newlocations1","newlocations1","newlocations1,newlocations1","newlocations1","newlocations1"]
    @IBOutlet weak var storirescollectionView: UICollectionView!
    
    @IBOutlet weak var newlocationscollection: UICollectionView!
    
    @IBOutlet weak var
popularlocationcollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchTextField()
        self.tabBarController?.tabBar.isTranslucent = true
        self.tabBarController?.tabBar.layer.backgroundColor = UIColor.white.cgColor
        self.tabBarController?.tabBar.layer.masksToBounds = true
        self.tabBarController?.tabBar.layer.cornerRadius = 15
        self.tabBarController?.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        storirescollectionView.delegate = self
        storirescollectionView.dataSource = self
        popularlocationcollection.delegate = self
        popularlocationcollection.dataSource = self
        newlocationscollection.delegate = self
        newlocationscollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    func configureSearchTextField()
    {
        searchTxtFiels.layer.masksToBounds = false
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 23.0, height: 23.0))
        let image = UIImage(named: "search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let parentview = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 41))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: 41))
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.757, blue: 0.102, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        view.addSubview(imageView)
        parentview.addSubview(view)
        searchTxtFiels.rightViewMode = UITextField.ViewMode.always
        searchTxtFiels.rightView = parentview
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storiesimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.storirescollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCell", for: indexPath) as! StoriesCell
            
            cell.userimages.image = UIImage(named: storiesimages[indexPath.row])
            cell.userimages.layer.cornerRadius = cell.userimages.frame.width/2
            cell.userimages.layer.masksToBounds = true
            cell.userimages.layer.borderWidth = 2.0
            let gradient = CAGradientLayer()
            gradient.frame =  CGRect(origin: CGPoint.zero, size: cell.userimages.frame.size)
                gradient.colors = [UIColor.blue.cgColor, UIColor.green.cgColor]

                let shape = CAShapeLayer()
                shape.lineWidth = 2
            shape.path = UIBezierPath(rect: cell.userimages.bounds).cgPath
                shape.strokeColor = UIColor.black.cgColor
                shape.fillColor = UIColor.clear.cgColor
                gradient.mask = shape

            cell.userimages.layer.addSublayer(gradient)
            
            return cell
        }
        else if collectionView == self.popularlocationcollection
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularLocationCell", for: indexPath) as! PopularLocationCell
            cell.hotelsImages.image = UIImage(named: popularhotelImages[indexPath.row])
            return cell
        }
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewLocationCell", for: indexPath) as! NewLocationCell
//            cell.hotelimages.image = UIImage(named: newlocationsImages[indexPath.row])
            cell.cellbackgroundview.layer.cornerRadius = 18
            cell.cellbackgroundview.layer.shadowColor = UIColor.black.cgColor
            cell.cellbackgroundview.layer.shadowOpacity = 0.1
            cell.cellbackgroundview.layer.borderColor = UIColor.white.cgColor
            cell.cellbackgroundview.layer.borderWidth = 5
           
            return cell
        }
    }

}
