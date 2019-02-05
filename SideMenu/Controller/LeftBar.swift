//
//  File.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 01/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class LeftBar: UITableViewController {

    func presentToViewController(viewController: UIViewController) {
        let parentViewController = (parent as! SlideMenuController)
        parentViewController.performSlide()
        present(viewController, animated: true)
    }
    
}
