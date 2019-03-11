//
//  File.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 01/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class LeftBar: UIViewController {
    
    var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.alwaysBounceVertical = true
        tableView.alwaysBounceHorizontal = false
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    var optionsViewControllers = [UIViewController]()
    var selected: Int!
    
    func presentToViewController(viewController: Int) {
        let parentViewController = (parent as! SlideMenuController)
        parentViewController.performSlide()
        self.navigationController!.pushViewController(optionsViewControllers[viewController], animated: true)
    }
    
}
