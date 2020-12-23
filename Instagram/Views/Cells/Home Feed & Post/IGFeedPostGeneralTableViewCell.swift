//
//  IGFeedPostGeneralTableViewCell.swift
//  Instagram
//
//  Created by Egehan Karaköse on 9.12.2020.
//

import UIKit


/// Comments

class IGFeedPostGeneralTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostGeneralTableViewCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func configure(){
//        configure cell
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
