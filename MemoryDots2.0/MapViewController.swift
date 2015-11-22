//
//  MapViewController.swift
//  MemoryDotsInSwift
//
//  Created by Wei-Lun Su on 11/21/15.
//  Copyright (c) 2015 Allen Su. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // Mark: SetupUI
    
    func setupUI(){
        navigationItem.title = "Map"
        view.backgroundColor = UIColor.whiteColor()
    }

}
