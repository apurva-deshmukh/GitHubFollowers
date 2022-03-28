//
//  SearchViewController.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 3/27/22.
//

import UIKit

class SearchViewController: UIViewController {

    let logoImageView = UIImageView()
    let usernameTextField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureLogoImageView()
        configureTextField()
        configureCallToActionButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.image = UIImage(named: "gh-logo")!
        
        logoImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 80)
        logoImageView.centerX(inView: view)
        logoImageView.setDimensions(width: 200, height: 200)
    }
    
    func configureTextField() {
        view.addSubview(usernameTextField)
        
        usernameTextField.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor,
                                 paddingTop: 40, paddingLeft: 50, paddingRight: 50)
        usernameTextField.setHeight(height: 50)
    }
    
    func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        
        callToActionButton.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                  right: view.rightAnchor, paddingLeft: 50, paddingBottom: 50, paddingRight: 50)
        callToActionButton.setHeight(height: 50)
    }
}
