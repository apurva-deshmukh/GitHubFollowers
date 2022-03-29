//
//  FollowerListViewController.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 3/27/22.
//

import UIKit

class FollowerListViewController: UIViewController {

    // MARK: Properties
    
    var username: String!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
