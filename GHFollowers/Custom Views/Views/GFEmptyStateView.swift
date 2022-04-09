//
//  GFEmptyStateView.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 4/9/22.
//

import UIKit

class GFEmptyStateView: UIView {

    // MARK: Properties
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    // MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    // MARK: Helpers

    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageView)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoImageView.image = UIImage(named: "empty-state-logo")
        
        messageLabel.anchor(left: self.leftAnchor, right: self.rightAnchor, paddingLeft: 40, paddingRight: 40)
        messageLabel.setHeight(height: 200)
        
        logoImageView.anchor(left: self.leftAnchor, bottom: self.bottomAnchor, paddingLeft: 70, paddingBottom: -40)
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3)
        ])
    }
}
