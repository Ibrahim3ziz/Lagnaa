//
//  insideRoundedButton.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/4/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit
@IBDesignable

class insideRoundedButton: UIButton {

    func insideroundedButton () {
        layer.cornerRadius = 15.0
        layer.borderWidth = 1.0
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        clipsToBounds = true
//        NSShadow.
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        insideroundedButton()
        
    }
    
    override func prepareForInterfaceBuilder() {
        insideroundedButton()
    }
    
    
}
