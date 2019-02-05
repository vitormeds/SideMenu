//
//  File.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 01/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class LeftBar: UITableViewController {

    var optionsViewControllers = [UIViewController]()
    var selected: Int!
    func presentToViewController(viewController: Int) {
        let parentViewController = (parent as! SlideMenuController)
        parentViewController.performSlide()
        self.present(optionsViewControllers[viewController], animated: true)
    }
    
}
