//
//  CaseViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/9/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class CaseViewController: UIViewController {
    
    private(set) public var cases = [Case]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func initCase(request: Request) {
        navigationItem.title = "الحالة رقم \(String(request.number))"
        
    }
  

}
