//
//  PaymentViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/7/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
    
    @IBOutlet weak var paymentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paymentLabel.text = " المبلغ: ريال"
    }
    
    
}
