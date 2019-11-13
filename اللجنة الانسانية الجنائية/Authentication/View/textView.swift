//
//  textView.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/6/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit
@IBDesignable

class textView: UITextView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 20.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderWidth = 1.0
        layer.borderColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        clipsToBounds = true
        textAlignment = NSTextAlignment.right
        
    }
    
    override func prepareForInterfaceBuilder() {
        
    }


}


