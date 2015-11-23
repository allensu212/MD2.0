//
//  AllDotsTableViewCell.swift
//  MemoryDots2.0
//
//  Created by Wei-Lun Su on 11/22/15.
//  Copyright (c) 2015 Allen Su. All rights reserved.
//

import UIKit
import PureLayout

let kPaddingTop:CGFloat = 10.0
let kPaddingBottom:CGFloat = 10.0
let kPaddingLeft:CGFloat = 10.0
let kPaddingRight:CGFloat = 10.0

class AllDotsTableViewCell: UITableViewCell {
    
    var didSetupConstraints = false
    var photoImageView: UIImageView!

    // MARK: Initializer
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .Default, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: UISetup
    
    func setupUI(){
        
        photoImageView = UIImageView()
        photoImageView.image = UIImage(named: "nyc")
        photoImageView.contentMode = UIViewContentMode.ScaleAspectFill
        photoImageView.clipsToBounds = true
        contentView.addSubview(photoImageView)
        
        self.setNeedsUpdateConstraints()
        self.updateConstraintsIfNeeded()
        textLabel?.numberOfLines = 0
        textLabel?.font = CustomAppearance().tableViewTextLabelFont
        textLabel?.textColor = CustomAppearance().whiteColor
        
        photoImageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        textLabel!.setTranslatesAutoresizingMaskIntoConstraints(false)
    }
    
    func configureCell(text: String){
        textLabel?.text = text
    }
    
    // MARK: PureLayout
    
    override func updateConstraints() {
        if !didSetupConstraints {
            didSetupConstraints = true;
            photoImageView.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsMake(kPaddingTop, kPaddingLeft, kPaddingBottom, kPaddingRight))
            textLabel!.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsMake(kPaddingTop, kPaddingLeft + 8.0, kPaddingBottom, kPaddingRight + 8.0))
        }
        super.updateConstraints()
    }
    
}
