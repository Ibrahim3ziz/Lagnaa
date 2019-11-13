//
//  LoginViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 10/28/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
   
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if phoneNumberTextField.text!.isEmpty {
            let alertController = UIAlertController(title: "الرقم غير صحيح", message: "يجب عليك ادخال رقم صحيح", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        else {
            return phoneNumberTextField.text = title
        }
        
    }
    
    
    @IBAction func signUpButtonTaped(_ sender: Any) {
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
