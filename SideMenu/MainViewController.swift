//
//  ViewController.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 01/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var isLeft = false
    
    var leftBar = LeftBar()
    var homeView = HomeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .done, target: self, action: #selector(performLeft))
        addChild(leftBar)
        view.addSubview(leftBar.view)
        leftBar.view.frame.origin = CGPoint(x: 0, y: 0)
        self.leftBar.view.frame.size = CGSize(width: 0, height: self.view.frame.height)
        addChild(homeView)
        view.addSubview(homeView.view)
        homeView.view.frame.origin = CGPoint(x: 0, y: 0)
        self.homeView.view.frame.size = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizer.Direction.right {
            performLeft()
        }
        else if gesture.direction == UISwipeGestureRecognizer.Direction.left {
            if isLeft {
                performLeft()
            }
        }
    }
    
    @objc func performLeft() {
        if !isLeft {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.navigationController?.navigationBar.frame.origin.x = 100
                self.tabBarController?.tabBar.frame.origin.x = 100
                self.leftBar.view.frame.origin = CGPoint(x: 0, y: 0)
                self.leftBar.view.frame.size = CGSize(width: 100, height: self.view.frame.height)
                self.homeView.view.frame.origin = CGPoint(x: 100, y: 0)
                self.homeView.view.frame.size = CGSize(width: self.view.frame.width - 100, height: self.view.frame.height)
            })
        }
        else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.navigationController?.navigationBar.frame.origin.x = 0
                self.tabBarController?.tabBar.frame.origin.x = 0
                self.leftBar.view.frame.origin = CGPoint(x: 0, y: 0)
                self.leftBar.view.frame.size = CGSize(width: 0, height: self.view.frame.height)
                self.homeView.view.frame.origin = CGPoint(x: 0, y: 0)
                self.homeView.view.frame.size = CGSize(width: self.view.frame.width, height: self.view.frame.height)
            })
        }
        isLeft = !isLeft
    }
}

