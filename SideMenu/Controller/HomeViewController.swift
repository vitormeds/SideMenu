//
//  HomeViewController.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 04/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class HomeViewController: SlideMenuController {
    
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

extension UIColor {
    
    convenience public init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    
    open class var primary: UIColor {
      return UIColor(hex: "19424B")
    }
}
