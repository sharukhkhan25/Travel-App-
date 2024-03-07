//
//  OtherGroupTextMessageTableViewCell.swift
//  NavadChat
//
//  Created by Izaan Saleem on 16/03/2023.
//

import UIKit

class OtherGroupTextMessageTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var lblNameTime: UILabel!
    @IBOutlet weak var imgUser: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
