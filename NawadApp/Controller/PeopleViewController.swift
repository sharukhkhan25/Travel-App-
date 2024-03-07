//
//  PeopleViewController.swift
//  NawadApp
//
//  Created by Apple on 09/03/2023.
//

import UIKit
import LZViewPager
class PeopleViewController: UIViewController, LZViewPagerDelegate, LZViewPagerDataSource {
    var buttenchecker = true
    var buttensizechecker = true
    
    private var subControllers:[UIViewController] = []
    @IBOutlet weak var viewpager: LZViewPager!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewpagerproperties()
        // Do any additional setup after loading the view.
    }
    func viewpagerproperties()
    {
        viewpager.delegate = self
        viewpager.dataSource = self
        viewpager.layer.cornerRadius = 23
        viewpager.hostController = self
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConveresationsVc") as! ConveresationsVc
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GroupedVc") as! GroupedVc
        vc1.title = "Conversations"
        vc2.title = "Grouped"
        subControllers = [vc1, vc2]
        viewpager.layer.cornerRadius = 20
        
        viewpager.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        viewpager.reload()
    }
    
    func numberOfItems() -> Int {
        return self.subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
//        button.setTitle("khan", for: .selected)
//        button.titleLabel?.font = UIFont.
        button.setBackgroundImage(UIImage.imageWithColor(color: UIColor.white), for: .normal)
        button.setBackgroundImage(UIImage.imageWithColor(color: UIColor.white), for: .selected)
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitleColor(UIColor.black, for: .selected)
        
        
//        let normalAttributes: [NSAttributedString.Key: Any] = [
//            .font: UIFont.systemFont(ofSize: 14)
//        ]
//        let normalAttributedTitle = NSAttributedString(string: "group", attributes: normalAttributes)
//        button.setAttributedTitle( normalAttributedTitle, for: .normal)

        // Set font size for selected state
//        let selectedAttributes: [NSAttributedString.Key: Any] = [
//            .font: UIFont.boldSystemFont(ofSize: 20)
//        ]
//        let selectedAttributedTitle = NSAttributedString(string: "group1", attributes: selectedAttributes)
//        button.setAttributedTitle(selectedAttributedTitle, for: .selected)
        return button
        
//        let button = UIButton()
//        if index == index {
//            button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
//        }
//        if button.isSelected == true && index == 0
//        {
//            print("Touheed \(index)")
//            button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 20)
//            button.setTitleColor(UIColor.black, for: .selected)
//            button.setTitleColor(UIColor.black.withAlphaComponent(0.2), for: .normal)
//
//        }
//        else
//        {
//            print("Khan \(index)")
//            let grouped = button.titleLabel
//            let conversations = button.titleLabel
//            if index == 0 {
//                conversations?.font = UIFont(name: "Poppins-Medium", size: 19)
//                if conversations?.isEnabled == true {
//                    print("it is Exclusive")
//                }
//
//            } else {
//                grouped?.font = UIFont(name: "Poppins-Medium", size: 13)
//
//            }
//            button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 14)
//            button.setTitleColor(UIColor.black, for: .selected)
//            button.setTitleColor(UIColor.black.withAlphaComponent(0.2), for: .normal)
       // }
          //  return button
            // If you want page3 is selected as default,
            // please refer to the following code
        
//        if buttenchecker == true
//        {
//            button.setTitleColor(UIColor.black, for: .selected)
//            button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 17)
//            button1.setTitleColor(UIColor(red: 183, green: 183, blue: 183, alpha: 1), for: .normal)
//            button1.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 15)
//            buttenchecker = false
//        }
//        else
//        {
//
//            button1.setTitleColor(UIColor.black, for: .selected)
//            button1.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 17)
//            button.setTitleColor(UIColor(red: 183, green: 183, blue: 183, alpha: 1), for: .normal)
//            button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 12)
//            buttenchecker = true
//        }
//        if index == 0
//        {
//            return button
//        }
//        else
//        {
//
//        }
    }
    func widthForButton(at index: Int) -> CGFloat {
        return 150
    }
    
    
    func buttonsAligment() -> ButtonsAlignment {
        return .left
    }
    
    
    func widthForIndicator(at index: Int) -> CGFloat {
        if index == 0
        {
            return 120
        }
       else
        {
           return 95
       }
    }
    func heightForHeader() -> CGFloat {
        return 47
    }
   
    func leftMarginForSeparator() -> CGFloat {
        return 200
    }

}
extension UIImage {
    class func imageWithColor(color: UIColor) -> UIImage {
        let rect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
