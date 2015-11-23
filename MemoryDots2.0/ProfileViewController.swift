//
//  ProfileViewController.swift
//  MemoryDots2.0
//
//  Created by Wei-Lun Su on 11/22/15.
//  Copyright (c) 2015 Allen Su. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // Mark: SetupUI
    
    func setupUI(){
        navigationItem.title = "Profile"
        view.backgroundColor = UIColor.whiteColor()
        
    }
    
}
