//
//  StratViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 10/30/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    var member: Membership!
    

    @IBOutlet weak var benefitButton: UIButton!
    @IBOutlet weak var donnerButton: UIButton!
    @IBOutlet weak var joinerButton: UIButton!
    
    var navigation = UINavigationItem() {
        didSet {
           // navigation.title = (sender as? UIButton)?.currentTitle
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Benefit Show" {
            navigationController?.title = ";lmdsg"
        }
//
////        if let identifier = segue.identifier {
////            if let startVC = segue.destination as? StartViewController {
////                    startVC.title = (sender as? UIButton)?.currentTitle
////                    navigation.title = (sender as? UIButton)?.currentTitle
////                    print("\(navigation.title)")
//////                    UINavigationItem.init(title: startVC.)
////
//            }
//        }
    }
    
    @IBAction func benefitButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
        navigationController?.title = member.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        member = Membership(title:  title!)
    }
    
    
}
