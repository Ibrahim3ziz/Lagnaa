//
//  roundedButton.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 10/22/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit
@IBDesignable


class roundedButton: UIButton {
    
    func roundedButton () {
        layer.cornerRadius = 25.0
        backgroundColor = #colorLiteral(red: 0.3254901961, green: 0.7019607843, blue: 0.9019607843, alpha: 1)
        clipsToBounds = true
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        roundedButton()
    
    }
    
    override func prepareForInterfaceBuilder() {
        roundedButton()
    }
        
}

