//
//  RedViewController.swift
//  SideMenu
//
//  Created by Vitor Mendes on 05/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class RedViewController : SlideMenuController {
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.red
    }
}
