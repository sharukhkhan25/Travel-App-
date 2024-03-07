//
//  WorkViewController.swift
//  NawadApp
//
//  Created by Apple on 08/03/2023.
//

import UIKit
import LZViewPager
class WorkViewController: UIViewController, LZViewPagerDelegate, LZViewPagerDataSource {
  
    

    // MARK: - Variables
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
        viewpager.hostController = self
        let listvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListVc") as! ListVc
        let mapvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MapVc") as! MapVc
        listvc.title = "List"
        mapvc.title = "Map"
        subControllers = [listvc, mapvc]
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
              button.setTitleColor(UIColor.black, for: .selected)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }
    func widthForButton(at index: Int) -> CGFloat {
        return 100
    }
    func buttonsAligment() -> ButtonsAlignment {
        return .left
    }
    func widthForIndicator(at index: Int) -> CGFloat {
        return 40
    }
    
    func didSelectButton(at index: Int) {
          
           print("Current index after transition: \(index)")
        if index == 1
        {
            let story = UIStoryboard(name: "SheetHotels", bundle: nil)
            
            let presentationstoryboard = story.instantiateViewController(withIdentifier: "SheetHotelsVc") as! SheetHotelsVc
            self.present(presentationstoryboard, animated: true)
        }
       }
    
    
    
    
}
