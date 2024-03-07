//
//  GroupedHotelsCell.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit

class GroupedHotelsCell: UITableViewCell {

    @IBOutlet weak var backgroundimageview: UIView!
    
    @IBOutlet weak var contentbackground: UIView!
    @IBOutlet weak var imageofhotels: UIImageView!
    @IBOutlet weak var hotel: UILabel!
    @IBOutlet weak var groupedhotelname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
