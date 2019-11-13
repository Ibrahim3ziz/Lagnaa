//
//  colorBar.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/10/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import Foundation
import UIKit

public class StatusBarViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}

public extension StatusBarViewController {
    
    func statusBarColor(){
        
        if #available(iOS 13.0, *) {
                let app = UIApplication.shared
                let statusBarHeight: CGFloat = app.statusBarFrame.size.height
                
                let statusbarView = UIView()
                statusbarView.backgroundColor = UIColor.red
                view.addSubview(statusbarView)
              
                statusbarView.translatesAutoresizingMaskIntoConstraints = false
                statusbarView.heightAnchor
                    .constraint(equalToConstant: statusBarHeight).isActive = true
                statusbarView.widthAnchor
                    .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
                statusbarView.topAnchor
                    .constraint(equalTo: view.topAnchor).isActive = true
                statusbarView.centerXAnchor
                    .constraint(equalTo: view.centerXAnchor).isActive = true
              
            } else {
                let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
                statusBar?.backgroundColor = UIColor.red
            }
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
        }
    }

