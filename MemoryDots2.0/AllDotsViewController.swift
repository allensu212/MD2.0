//
//  AllDotsViewController.swift
//  MemoryDotsInSwift
//
//  Created by Wei-Lun Su on 10/25/15.
//  Copyright (c) 2015 Allen Su. All rights reserved.
//

import UIKit
import PureLayout

class AllDotsViewController: UIViewController {
    
    var tableView: UITableView!
    var didSetupConstraints = false
    
    // Mark: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // Mark: SetupUI
    
    func setupUI(){
        navigationItem.title = "MemoryDots"
        view.backgroundColor = UIColor.whiteColor()
        tableView = UITableView(frame: view.bounds)
        view.addSubview(tableView)
    }
}

