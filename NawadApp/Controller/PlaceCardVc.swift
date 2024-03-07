//
//  PlaceCardVc.swift
//  NawadApp
//
//  Created by Apple on 08/03/2023.
//

import UIKit

class PlaceCardVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let largeTitleAppearance = UINavigationBarAppearance()
        largeTitleAppearance.configureWithOpaqueBackground()
        largeTitleAppearance.backgroundImage = UIImage(named: "navigationHotel")
        largeTitleAppearance.backgroundImageContentMode = .scaleAspectFill
        largeTitleAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        largeTitleAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = largeTitleAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = largeTitleAppearance
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
