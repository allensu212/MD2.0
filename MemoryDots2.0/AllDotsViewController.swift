//
//  AllDotsViewController.swift
//  MemoryDotsInSwift
//
//  Created by Wei-Lun Su on 10/25/15.
//  Copyright (c) 2015 Allen Su. All rights reserved.
//

import UIKit
import PureLayout

let allDotsTableViewCellIdentifier = "allDotsTableViewCellIdentifier"

class AllDotsViewController: UIViewController {
    
    var tableView: UITableView!
    var didSetupConstraints = false
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: SetupUI
    
    func setupUI(){
        navigationItem.title = "MemoryDots"
        view.backgroundColor = UIColor.whiteColor()
        
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.autoPinEdgesToSuperviewEdges()
        
        tableView.registerClass(AllDotsTableViewCell.self, forCellReuseIdentifier: allDotsTableViewCellIdentifier)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100.0
    }
    
}

extension AllDotsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let allDotsCell = tableView.dequeueReusableCellWithIdentifier(allDotsTableViewCellIdentifier) as! AllDotsTableViewCell
        allDotsCell.textLabel?.text = "testing a very long text to see how far it could go..."
        return allDotsCell
    }
    
}
