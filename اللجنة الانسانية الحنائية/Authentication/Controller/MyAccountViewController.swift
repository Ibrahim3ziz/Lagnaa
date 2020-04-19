//
//  MyAccountViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/3/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabelShape()

    }
    
    func userNameLabelShape() {
        userNameLabel.layer.cornerRadius = 15.0
        userNameLabel.layer.borderWidth = 1.0
        userNameLabel.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        userNameLabel.clipsToBounds = true
        userNameLabel.text = "اسم المستخدم"

    }
}
