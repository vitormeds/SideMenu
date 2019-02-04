//
//  ViewController.swift
//  LeftMenuApp
//
//  Created by Vitor Mendes on 01/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class SlideMenuController: UIViewController {

    var isLeft = false
    var leftBar = UIViewController()
    var homeView = UIViewController()
    var sizeLeftBar = 0
    let shadowView: UIView = {
        let shadowView = UIView()
        shadowView.isUserInteractionEnabled = false
        shadowView.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        return shadowView
    }()
    
    init(barViewController:UIViewController, mainViewController:UIViewController)
    {
        super.init(nibName: nil, bundle: nil)
        self.sizeLeftBar = Int((view.frame.width * 80) / 100)
        leftBar = barViewController
        homeView = mainViewController
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .done, target: self, action: #selector(performSlide))
        self.addChild(leftBar)
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
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func tapGesture(gesture: UITapGestureRecognizer) -> Void {
        if isLeft {
            performSlide()
        }
    }
    
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizer.Direction.right {
            performSlide()
        }
    }
    
    @objc func performSlide() {
        if !isLeft {
            UIApplication.shared.keyWindow!.addSubview(self.shadowView)
            self.shadowView.frame.origin = CGPoint(x: CGFloat(self.sizeLeftBar), y: 0)
            self.shadowView.frame.size = CGSize(width: self.view.frame.width, height: self.view.frame.height)
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.navigationController?.navigationBar.frame.origin.x = CGFloat(self.sizeLeftBar)
                self.tabBarController?.tabBar.frame.origin.x = CGFloat(self.sizeLeftBar)
                self.leftBar.view.frame.origin = CGPoint(x: 0, y: 0)
                self.leftBar.view.frame.size = CGSize(width: CGFloat(self.sizeLeftBar), height: self.view.frame.height)
                self.homeView.view.frame.origin = CGPoint(x: CGFloat(self.sizeLeftBar), y: 0)
                self.shadowView.frame.size = CGSize(width: self.view.frame.width - CGFloat(self.sizeLeftBar), height: self.view.frame.height)
            })
        }
        else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.shadowView.removeFromSuperview()
                self.navigationController?.navigationBar.frame.origin.x = 0
                self.tabBarController?.tabBar.frame.origin.x = 0
                self.leftBar.view.frame.origin = CGPoint(x: 0, y: 0)
                self.leftBar.view.frame.size = CGSize(width: 0, height: self.view.frame.height)
                self.homeView.view.frame.origin = CGPoint(x: 0, y: 0)
            })
        }
        isLeft = !isLeft
    }
}

