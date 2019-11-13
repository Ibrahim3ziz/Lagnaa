//
//  PaymentCell.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/8/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import UIKit

class PaymentCell: UITableViewCell {

    @IBOutlet weak var coloredBorderUIViewCell: UIView!
    
    @IBOutlet weak var numberLabelCell: UILabel!
    @IBOutlet weak var dateLabelCell: UILabel!
    @IBOutlet weak var statusLabelCell: UILabel!
    @IBOutlet weak var exclamationImage: UIImageView!
    @IBOutlet weak var eyeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        coloredBorderUIViewCell.layer.borderWidth = 1.0
        coloredBorderUIViewCell.layer.borderColor = #colorLiteral(red: 0.3254901961, green: 0.7019607843, blue: 0.9019607843, alpha: 1)
    }
    
    func updateViews (Request: Request) {
                   dateLabelCell.text = String(Request.date)
                   numberLabelCell.text = String(Request.number)
                   statusLabelCell.text = Request.status
           }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
