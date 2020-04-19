//
//  textField.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 10/22/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit
@IBDesignable

class textField: UITextField {
    
    
    func customizetextField () {
        
        layer.cornerRadius = 20.0
        backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 1.0
        clipsToBounds = true
        textAlignment = NSTextAlignment.right
        borderStyle = .roundedRect
        //frame = CGRect(x: self.center.x, y: self.center.y, width: 437.0 , height: 50)
        
        
        
        if placeholder != nil {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.gray])
            attributedPlaceholder = place
            textColor = .black
            }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizetextField()
        
    }
    
    
    override func prepareForInterfaceBuilder() {
        customizetextField()
    }
    
    
   
    
    
}
