//
//  RedViewController.swift
//  SideMenu
//
//  Created by Vitor Mendes on 05/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class RedViewController : SlideMenuController {
    
//    override open func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: false)
//        self.tabBarController?.tabBar.isHidden = true
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        navigationController?.setNavigationBarHidden(false, animated: false)
//        self.tabBarController?.tabBar.isHidden = false
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.backgroundColor = UIColor.primary
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor.primary
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
    }
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
    }
}
