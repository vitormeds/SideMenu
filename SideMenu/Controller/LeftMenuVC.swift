//
//  LeftMenuVC.swift
//  SideMenu
//
//  Created by Vitor Mendes on 15/08/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class LeftMenuVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.lightGray
        cell.textLabel?.text = "Menu"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let centerVC: UIViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "blue")
            let centerNavVC = UINavigationController(rootViewController: centerVC)
            
            _ = panel!.center(centerNavVC)
        }
        else if indexPath.row == 1 {
            let centerVC: UIViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "red")
            let centerNavVC = UINavigationController(rootViewController: centerVC)
            
            _ = panel!.center(centerNavVC)
        }
        else if indexPath.row == 2 {
            let centerVC: UIViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "gray")
            let centerNavVC = UINavigationController(rootViewController: centerVC)
            
            _ = panel!.center(centerNavVC)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
