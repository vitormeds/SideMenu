//
//  CustomTabBarController.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 01/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController{
    override func viewDidLoad() {
        
        let mainViewController = SlideMenuController(barViewController: LeftBar(), mainViewController: HomeViewController())
        let mainViewNavigationController = UINavigationController(rootViewController: mainViewController)
        mainViewNavigationController.title = "Inicio"
        
        let configViewController = ConfigViewController()
        let configNavigationController = UINavigationController(rootViewController: configViewController)
        configNavigationController.title = "Configuração"
        
        viewControllers = [mainViewNavigationController, configNavigationController]
    }
}
