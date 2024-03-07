//
//  HotelsDetailsVc.swift
//  NawadApp
//
//  Created by Apple on 11/03/2023.
//

import UIKit

class HotelsDetailsVc: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var raingbtn5: UIButton!
    @IBOutlet weak var ratingbtn3: UIButton!
    
    @IBOutlet weak var ratingbtn4: UIButton!
    
    @IBOutlet weak var ratingbtn2: UIButton!
    @IBOutlet weak var ratingbtn: UIButton!
    
    @IBOutlet weak var ratingbutten1: UIView!
    
    var images = ["Rectangle 1","Rectangle 1"]
    @IBOutlet weak var hotelscollectionview: UICollectionView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        HotelsCollectionCellCollectionViewCell
    
        hotelscollectionview.delegate = self
        hotelscollectionview.dataSource = self
        configureinternetbutten()
        // Do any additional setup after loading the view.
    }
    
    func configureinternetbutten()
    {
        ratingbtn.layer.cornerRadius = 15
        ratingbtn2.layer.cornerRadius = 15
        ratingbtn3.layer.cornerRadius = 15
        ratingbtn4.layer.cornerRadius = 15
        raingbtn5.layer.cornerRadius = 15
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HotelsCollectionCellCollection", for: indexPath) as! HotelsCollectionCellCollectionViewCell
        
        cell.hotelimages.image = UIImage(named: images[indexPath.row])
        return cell
    }

}
