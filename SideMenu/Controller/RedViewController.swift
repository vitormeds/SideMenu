//
//  RedViewController.swift
//  SideMenu
//
//  Created by Vitor Mendes on 05/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class RedViewController : UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.red
        let tap = UITapGestureRecognizer(target: self, action: #selector(back))
        tap.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func back(gesture: UITapGestureRecognizer) -> Void {
        dismiss(animated: true)
    }
}
