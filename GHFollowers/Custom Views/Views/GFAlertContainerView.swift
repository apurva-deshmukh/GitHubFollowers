//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 3/28/22.
//

import UIKit

class GFAlertContainerView: UIView {

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
        layer.cornerRadius = 16
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        backgroundColor = .systemBackground
    }
    
    
}
