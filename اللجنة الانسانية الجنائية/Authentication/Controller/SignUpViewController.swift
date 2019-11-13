//
//  SignUpViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 10/28/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var genderButton: roundedButtonLikeTextField!
    @IBOutlet weak var cityButton: roundedButtonLikeTextField!
    @IBOutlet weak var donnateFieldButton: roundedButtonLikeTextField!

    
    
    
        @IBAction func genderButtonTapped(_ sender: Any) {
            let genderList = UIAlertController(title: "الجنس", message: nil, preferredStyle: .actionSheet)
                  
            let male = UIAlertAction(title: "ذكر", style: .default)
            let female = UIAlertAction(title: "أنثي", style: .default)
              
            genderList.addAction(male)
            genderList.addAction(female)
            
            self.present(genderList, animated: true) {
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
                genderList.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
                }
            }
    
    
    
    @objc func dismissAlertController(){
        self.dismiss(animated: true, completion: nil)
    }
  
    
    
    
    @IBAction func cityButtonTapped(_ sender: Any) {
        let city = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let city1 = UIAlertAction(title: "المنصورة", style: .default)
        let city2 = UIAlertAction(title: "الجميزة", style: .default)
        let city3 = UIAlertAction(title: "جدة", style: .default)
        let city4 = UIAlertAction(title: "اسكندرية", style: .default)
        
        city.addAction(city1)
        city.addAction(city2)
        city.addAction(city3)
        city.addAction(city4)
        
        self.present(city, animated: true) {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
            city.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
        }

            
    }
    
    
    
    
    @IBAction func donnateFieldButtonTapped(_ sender: Any) {
        let donnateField = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
              
        let donnate1 = UIAlertAction(title: "التبرعات المالية", style: .default)
        let donnate2 = UIAlertAction(title: "التبرعات العينية", style: .default)
        let donnate3 = UIAlertAction(title: "التبرعات الأخري", style: .default)
        let donnate4 = UIAlertAction(title: "الكل", style: .default)

        donnateField.addAction(donnate1)
        donnateField.addAction(donnate2)
        donnateField.addAction(donnate3)
        donnateField.addAction(donnate4)
        
        
        self.present(donnateField, animated: true) {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
            donnateField.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
            }
    }
    
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

   
}
