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
        
        tabBar.tintColor = UIColor.primary
        
        let mainViewController = HomeViewController()
        let mainViewNavigationController = UINavigationController(rootViewController: mainViewController)
        mainViewNavigationController.title = "Inicio"
        mainViewNavigationController.tabBarItem = UITabBarItem(title: "Inicio", image: #imageLiteral(resourceName: "imgHome"), selectedImage: #imageLiteral(resourceName: "imgHome"))

        let configViewController = ConfigViewController()
        let configNavigationController = UINavigationController(rootViewController: configViewController)
        configNavigationController.title = "Configuração2"
        configNavigationController.tabBarItem = UITabBarItem(title: "Configuração2", image: #imageLiteral(resourceName: "imgHome"), selectedImage: #imageLiteral(resourceName: "imgHome"))
        
        let configViewController2 = BlueViewController()
        let configNavigationController2 = UINavigationController(rootViewController: configViewController2)
        configNavigationController2.title = "Configuração2"
        configNavigationController2.tabBarItem = UITabBarItem(title: "Configuração2", image: #imageLiteral(resourceName: "imgHome"), selectedImage: #imageLiteral(resourceName: "imgHome"))
        
        let configViewController3 = MenuTableViewController()
        let configNavigationController3 = UINavigationController(rootViewController: configViewController3)
        configNavigationController3.title = "Configuração4"
        configNavigationController3.tabBarItem = UITabBarItem(title: "Configuração4", image: #imageLiteral(resourceName: "imgHome"), selectedImage: #imageLiteral(resourceName: "imgHome"))
        
        viewControllers = [mainViewNavigationController, configNavigationController, configNavigationController2, configNavigationController3,]
    }
}
