//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 4/9/22.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    // MARK: Properties
    
    let placeholderImage = UIImage(named: "avatar-placeholder")!

    // MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
    }

}
