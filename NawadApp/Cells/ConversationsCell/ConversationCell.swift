//
//  ConversationCell.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit

class ConversationCell: UITableViewCell {

    @IBOutlet weak var userbackground: UIView!
    @IBOutlet weak var userimages: UIImageView!
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var usermessages: UILabel!
    @IBOutlet weak var usernames: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
