//
//  VisitedPlaceCollectionViewCell.swift
//  NavadChat
//
//  Created by Izaan Saleem on 16/03/2023.
//

import UIKit

class VisitedPlaceCollectionViewCell: UICollectionViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.imgBackground.layer.cornerRadius = 8
    }

}
