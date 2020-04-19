//
//  DonationsViewController.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/8/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class DonationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var donationTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        donationTable.dataSource = self
        donationTable.delegate = self
    }
    
    func createNoDataLabel () {
        let noDataLabel = UILabel()
        noDataLabel.translatesAutoresizingMaskIntoConstraints = false
        noDataLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        noDataLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        noDataLabel.textAlignment = .center
        noDataLabel.text = "لا توجد تبرعات جديدة"
        self.view.addSubview(noDataLabel)
    }
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if DataService.instance.getRequests().count == 0 {
//            return createNoDataLabel() }
//        else {
           return DataService.instance.getRequests().count
//        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let requestCell = tableView.dequeueReusableCell(withIdentifier: "PaymentCell") as? PaymentCell {
            let request = DataService.instance.getRequests()[indexPath.row]
            requestCell.updateViews(Request: request)
            return requestCell
        } else {
            return PaymentCell()
        }
    }
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let request = DataService.instance.getRequests()[indexPath.row]
        performSegue(withIdentifier: "To Case", sender: request)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let CaseVC = segue.destination as? CaseViewController {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            CaseVC.initCase(request: sender as! Request)
            
        }
    }
    

}

