//
//  LeftBarConfig.swift
//  SideMenu
//
//  Created by Vitor Mendes on 05/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

fileprivate let reuseIdentifier = "Cell"

extension LeftBar : UITableViewDelegate,UITableViewDataSource{
    
    
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        optionsViewControllers = [HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController(),RedViewController(),HomeViewController(),BlueViewController()]
        tableView.register(MenuCell.self, forCellReuseIdentifier: reuseIdentifier)
        setupTableView()
    }
    
    func setupTableView() {
        
        view.addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        headerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        headerView.backgroundColor = UIColor.primary
        
        headerView.addSubview(imageView)
        imageView.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 16).isActive = true
        imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
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
