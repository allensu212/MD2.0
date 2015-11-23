//
//  MapViewController.swift
//  MemoryDotsInSwift
//
//  Created by Wei-Lun Su on 11/21/15.
//  Copyright (c) 2015 Allen Su. All rights reserved.
//

import UIKit
import MapKit
import PureLayout

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // Mark: SetupUI
    
    func setupUI(){
        navigationItem.title = "Map"
        view.backgroundColor = UIColor.whiteColor()
        
        mapView = MKMapView()
        view.addSubview(mapView)
        mapView.autoPinEdgesToSuperviewEdges()
    }

}
