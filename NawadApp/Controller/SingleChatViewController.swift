//
//  SingleChatViewController.swift
//  NavadChat
//
//  Created by Izaan Saleem on 16/03/2023.
//

import UIKit

class SingleChatViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var viewBottom: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imgFlag: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var btnImage: UIButton!
    
    //MARK: - Proerties

    //MARK: - view LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupTableView()
        self.setupCollectionView()
        
        self.viewTop.clipsToBounds = true
        self.viewTop.layer.cornerRadius = 20
        self.viewTop.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        self.viewBottom.clipsToBounds = true
        self.viewBottom.layer.cornerRadius = 20
        self.viewBottom.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.tableView.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
    }
    
    //MARK: - Helper Methods
    private func setupTableView() {
        self.tableView.register(UINib(nibName: "MyTextMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTextMessageTableViewCell")
        self.tableView.register(UINib(nibName: "OtherTextMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "OtherTextMessageTableViewCell")
        self.tableView.register(UINib(nibName: "DayHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "DayHeaderView")
    }
    
    private func setupCollectionView() {
        self.collectionView.register(UINib(nibName: "VisitedPlaceCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "VisitedPlaceCollectionViewCell")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - IBActions
    @IBAction func backAction(_ sender: UIButton) {
        self.view.endEditing(true)
        self.dismiss(animated: true)
    }
    
    @IBAction func profileAction(_ sender: UIButton) {
        self.view.endEditing(true)
    }
    
    @IBAction func arrowAction(_ sender: UIButton) {
        self.view.endEditing(true)
        
        if self.collectionView.visibility == .gone {
            self.collectionView.visibility = .visible
            self.btnImage.setImage(UIImage(named: "arrowUp"), for: .normal)
        } else {
            self.collectionView.visibility = .gone
            self.btnImage.setImage(UIImage(named: "arrowDown"), for: .normal)
        }
    }
}

extension SingleChatViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.endEditing(true)
    }
}

extension SingleChatViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "VisitedPlaceCollectionViewCell", for: indexPath) as? VisitedPlaceCollectionViewCell {
            return cell
        }
        return UICollectionViewCell()
    }
}

extension SingleChatViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width / 2.5 - 20, height: self.collectionView.frame.height)
    }
}

extension SingleChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

extension SingleChatViewController: UITableViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let headerView = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: "DayHeaderView") as? DayHeaderView {
            return headerView
        }
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            if let cell = self.tableView.dequeueReusableCell(withIdentifier: "OtherTextMessageTableViewCell", for: indexPath) as? OtherTextMessageTableViewCell {
                return cell
            }
        } else {
            if let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTextMessageTableViewCell", for: indexPath) as? MyTextMessageTableViewCell {
                return cell
            }
        }
        return UITableViewCell()
    }
}
