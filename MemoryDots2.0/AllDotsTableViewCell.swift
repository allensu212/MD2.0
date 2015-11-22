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
let kPaddingLeft:CGFloat = 15.0
let kPaddingRight:CGFloat = 15.0

class AllDotsTableViewCell: UITableViewCell {
    
    var didSetupConstraints = false

    // MARK: Initializer
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .Subtitle, reuseIdentifier: reuseIdentifier)
        self.setNeedsUpdateConstraints()
        self.updateConstraintsIfNeeded()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        if !didSetupConstraints {
            didSetupConstraints = true;
            
            textLabel!.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsMake(kPaddingTop, kPaddingLeft, 0, kPaddingRight), excludingEdge: ALEdge.Bottom)
            
            detailTextLabel!.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsMake(0, kPaddingLeft, kPaddingBottom, kPaddingRight), excludingEdge: ALEdge.Top)
            detailTextLabel?.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: textLabel!, withOffset: 0.0)
            
        }
        super.updateConstraints()
    }
    
}
