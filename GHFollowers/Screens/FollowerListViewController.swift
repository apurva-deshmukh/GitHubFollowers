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
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
