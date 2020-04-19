//
//  roundedButtonLikeTextField.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/5/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit
@IBDesignable

class roundedButtonLikeTextField: UIButton {
    
    func customizeButton () {
    layer.cornerRadius = 20.0
    backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
    layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    layer.borderWidth = 1.0
    clipsToBounds = true
    }
    
    
    
       override func awakeFromNib() {
           super.awakeFromNib()
           customizeButton()
           
       }
       
       
       override func prepareForInterfaceBuilder() {
           customizeButton()
       }
       

}
