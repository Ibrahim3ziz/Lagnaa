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
        if navigationItem.title == "مستفيد" {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let signUpVC = segue.destination as? SignUpViewController
                signUpVC?.navigationItem.title = "مستفيد جديد" }
                }
        
        if navigationItem.title == "منضم" {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let signUpVC = segue.destination as? SignUpViewController
            signUpVC?.navigationItem.title = "منضم جديد"
            }
        }
        if navigationItem.title == "متبرع" {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let signUpVC = segue.destination as? SignUpViewController
                signUpVC?.navigationItem.title = "متبرع جديد"
            }
        }
        
    }
    
   
    
        
    
    
//            if navigationItem.title == "منضم" {
//               let signUpVC = segue.destination as? SignUpViewController
//                 signUpVC?.navigationItem.title = "منضم جديد"
//            }
//            if navigationItem.title == "متبرع" {
//                 let signUpVC = segue.destination as? SignUpViewController
//                signUpVC?.navigationItem.title = "متبرع جديد"
//            }
//      }
//
//}
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
