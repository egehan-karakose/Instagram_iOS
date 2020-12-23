//
//  IGFeedPostActionsTableViewCell.swift
//  Instagram
//
//  Created by Egehan Karaköse on 17.12.2020.
//

import UIKit

class IGFeedPostActionsTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostActionsTableViewCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
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
