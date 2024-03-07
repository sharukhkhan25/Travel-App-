//
//  HotelPlaces.swift
//  NawadApp
//
//  Created by Apple on 08/03/2023.
//

import UIKit

class HotelPlaces: UITableViewCell {

    @IBOutlet weak var hotelimages: UIImageView!
    
    @IBOutlet weak var contentbackgroundView: UIView!
    @IBOutlet weak var wifispeed: UILabel!
    @IBOutlet weak var percentagelbl: UILabel!
    @IBOutlet weak var pricedollar: UILabel!
    @IBOutlet weak var locationlbl: UILabel!
    @IBOutlet weak var hotelname: UILabel!
    @IBOutlet weak var ranklbl: UILabel!
    @IBOutlet weak var rankview: UIView!
    @IBOutlet weak var hotelnamelbl: UILabel!
    @IBOutlet weak var hotelnamebackgroundview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
//        contentbackgroundView.layer.cornerRadius = 5
//        contentbackgroundView.layer.masksToBounds = true
        
//        self.applyshadow(radius: 8)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension UIView{
    func applyshadow(radius : CGFloat)
    {
        layer.cornerRadius = radius
        layer.masksToBounds = false
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.35
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 30)
    }
    
}
