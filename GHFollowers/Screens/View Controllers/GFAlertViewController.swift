//
//  GFAlertViewController.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 3/28/22.
//

import UIKit

class GFAlertViewController: UIViewController {
    
    // MARK: Properties
    
    let containerView = GFAlertContainerView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    // MARK: Lifecycle
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75) // transparent black
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }
    
    // MARK: UI Configuration
    
    func configureContainerView() {
        view.addSubview(containerView)
        
        containerView.center(inView: view)
        containerView.setDimensions(width: 280, height: 220)
    }
    
    func configureTitleLabel() {
        containerView.addSubview(titleLabel)
        
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        titleLabel.anchor(top: containerView.topAnchor, left: containerView.leftAnchor, right: containerView.rightAnchor,
                          paddingTop: padding, paddingLeft: padding, paddingRight: padding)
        titleLabel.setHeight(height: 28)
    }
    
    func configureActionButton() {
        containerView.addSubview(actionButton)
        
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        actionButton.anchor(left: containerView.leftAnchor, bottom: containerView.bottomAnchor, right: containerView.rightAnchor, paddingLeft: padding, paddingBottom: padding, paddingRight: padding)
        actionButton.setHeight(height: 44)
    }
    
    func configureMessageLabel() {
        containerView.addSubview(messageLabel)
        
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        messageLabel.anchor(top: titleLabel.bottomAnchor, left: containerView.leftAnchor, bottom: actionButton.topAnchor, right: containerView.rightAnchor, paddingTop: 8, paddingLeft: padding, paddingBottom: 12, paddingRight: padding)
    }
    
    // MARK: Selectors
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    

}
