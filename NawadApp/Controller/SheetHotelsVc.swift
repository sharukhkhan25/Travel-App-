//
//  SheetHotelsVc.swift
//  NawadApp
//
//  Created by Apple on 10/03/2023.
//

import UIKit

class SheetHotelsVc: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISheetPresentationControllerDelegate  {
    
    override var sheetPresentationController: UISheetPresentationController{
        presentationController as! UISheetPresentationController
    }
    
    var popularhotelImages = ["hotel1","hotel1","hotel1","hotel1","hotel1","hotel1","hotel1"]
    @IBOutlet weak var hotelcollectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        hotelcollectionview.delegate = self
        hotelcollectionview.dataSource = self
        sheetPresentationController.delegate = self
        sheetPresentationController.selectedDetentIdentifier = .large
        sheetPresentationController.prefersGrabberVisible = true
        sheetPresentationController.detents = [.custom(resolver: { context in
            0.2 * context.maximumDetentValue
        })]
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return popularhotelImages.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MapHotelPlaces", for: indexPath) as! MapHotelPlaces
        cell.hotelsImages.image = UIImage(named: popularhotelImages[indexPath.row])
        return cell
    }

}
