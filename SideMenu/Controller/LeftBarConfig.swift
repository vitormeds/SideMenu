//
//  LeftBarConfig.swift
//  SideMenu
//
//  Created by Vitor Mendes on 05/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

fileprivate let reuseIdentifier = "Cell"

extension LeftBar {
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        optionsViewControllers = [HomeViewController(),BlueViewController(),RedViewController()]
        tableView.register(MenuCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! MenuCell
        if indexPath.row == 0 {
            cell.titleLabel.text = "Home"
            return cell
        }
        else if indexPath.row == 1 {
            cell.titleLabel.text = "Blue"
            return cell
        }
        else {
            cell.titleLabel.text = "Red"
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        presentToViewController(viewController: indexPath.row)
    }
}
