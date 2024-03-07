//
//  GroupChatViewController.swift
//  NavadChat
//
//  Created by Izaan Saleem on 16/03/2023.
//

import UIKit

class GroupChatViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var viewBottom: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnArrow: UIButton!
    
    //MARK: - view LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupTableView()
        self.setupCollectionView()
    }

    //MARK: - Helper Methods
    private func setupTableView() {
        self.tableView.register(UINib(nibName: "MyTextMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTextMessageTableViewCell")
        self.tableView.register(UINib(nibName: "OtherGroupTextMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "OtherGroupTextMessageTableViewCell")
        self.tableView.register(UINib(nibName: "DayHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "DayHeaderView")
    }
    
    private func setupCollectionView() {
        self.collectionView.register(UINib(nibName: "GroupMembersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GroupMembersCollectionViewCell")
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
        self.dismiss(animated: true)
    }
    
    @IBAction func arrowAction(_ sender: UIButton) {
        if self.collectionView.visibility == .gone {
            self.collectionView.visibility = .visible
            self.btnArrow.setImage(UIImage(named: "arrowUp"), for: .normal)
        } else {
            self.collectionView.visibility = .gone
            self.btnArrow.setImage(UIImage(named: "arrowDown"), for: .normal)
        }
    }
}


extension GroupChatViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.endEditing(true)
    }
}

extension GroupChatViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "GroupMembersCollectionViewCell", for: indexPath) as? GroupMembersCollectionViewCell {
            return cell
        }
        return UICollectionViewCell()
    }
}

extension GroupChatViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width / 2.5 - 20, height: self.collectionView.frame.height)
    }
}

extension GroupChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

extension GroupChatViewController: UITableViewDataSource {
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
            if let cell = self.tableView.dequeueReusableCell(withIdentifier: "OtherGroupTextMessageTableViewCell", for: indexPath) as? OtherGroupTextMessageTableViewCell {
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
