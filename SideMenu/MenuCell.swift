//
//  MenuCell.swift
//  SideMenu
//
//  Created by Vitor Mendes on 04/02/19.
//  Copyright © 2019 Vitor Mendes. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = NSTextAlignment.left
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public init() {
        super.init(style: .default, reuseIdentifier: "")
        setupViews()
    }
    
    func setupViews()
    {
        titleLabel.text = "adjsvhskdl;dkj;dlfjbklsdsjfskla;fjkl;fsljklfsslkfskslgdklfjlkfdjjkdlflklfjkl"
        addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 4).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -4).isActive = true
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
