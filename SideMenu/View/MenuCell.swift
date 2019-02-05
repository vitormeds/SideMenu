//
//  MenuCell.swift
//  SideMenu
//
//  Created by Vitor Mendes on 04/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Mario")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = NSTextAlignment.left
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.text = "Menu"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews()
    {
        addSubview(iconImageView)
        iconImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iconImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        
        addSubview(titleLabel)
        titleLabel.centerYAnchor.constraint(equalTo: iconImageView.centerYAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 16).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
