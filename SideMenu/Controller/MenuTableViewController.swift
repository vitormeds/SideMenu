//
//  MenuTableViewController.swift
//  SideMenu
//
//  Created by Vitor Mendes on 11/03/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class MenuTableViewController: UIViewController {
    
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

fileprivate let reuseIdentifier = "Cell"

extension MenuTableViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        title = "Menus"
        optionsViewControllers = [HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController()]
        tableView.register(MenuCell.self, forCellReuseIdentifier: reuseIdentifier)
        setupTableView()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! MenuCell
        cell.titleLabel.text = "Configuracao"
        cell.iconImageView.image = #imageLiteral(resourceName: "imgHome")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 18
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Pessoal":"Empresa"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        presentToViewController(viewController: indexPath.row)
    }
}
