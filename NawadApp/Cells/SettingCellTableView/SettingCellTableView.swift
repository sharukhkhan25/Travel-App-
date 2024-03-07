//
//  SettingCellTableView.swift
//  NawadApp
//
//  Created by Apple on 10/03/2023.
//

import UIKit

class SettingCellTableView: UITableViewCell {

    @IBOutlet weak var backgroundview: UIView!
    
    @IBOutlet weak var settingicons: UIImageView!
   
    @IBOutlet weak var settinglbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
