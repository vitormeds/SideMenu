//
//  HomeViewController.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 04/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class HomeViewController: SlideMenuController {
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        let tap = UITapGestureRecognizer(target: self, action: #selector(goToView))
        tap.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func goToView(gesture: UITapGestureRecognizer) -> Void {
        present(BlueViewController(), animated: true)
    }
}
