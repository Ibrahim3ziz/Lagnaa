//
//  StratViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 10/30/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit


class StartViewController: UIViewController {
    

    @IBOutlet weak var benefitButton: UIButton!
    @IBOutlet weak var donnerButton: UIButton!
    @IBOutlet weak var joinerButton: UIButton!
  
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "اللجنة الاستثنائيه الحنائيه"
       }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        navigationItem.title = nil
        if segue.identifier == "benefitLogin" {
            let loginVC = segue.destination as? LoginViewController
            loginVC?.navigationItem.title = "مستفيد"
        }
        if segue.identifier == "donerLogin" {
            let loginVC = segue.destination as? LoginViewController
            loginVC?.navigationItem.title = "متبرع"
        }
        if segue.identifier == "joinerLogin" {
            let loginVC = segue.destination as? LoginViewController
            loginVC?.navigationItem.title = "منضم"
        }
    }

}
