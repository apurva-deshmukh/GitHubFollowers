//
//  GFFollowerCell.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 4/9/22.
//

import UIKit

class GFFollowerCell: UICollectionViewCell {
    
    // MARK: Properties

    static let reuseID = "GFFollowerCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    
    // MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        avatarImageView.anchor(top: contentView.topAnchor, left: contentView.leftAnchor, right: contentView.rightAnchor, paddingTop: padding, paddingLeft: padding, paddingRight: padding)
        
        NSLayoutConstraint.activate([avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor)])
        
        usernameLabel.anchor(top: avatarImageView.bottomAnchor, left: contentView.leftAnchor, right: contentView.rightAnchor, paddingTop: 12, paddingLeft: padding, paddingRight: padding)
        
        usernameLabel.setHeight(height: 20)
    }
    
}
