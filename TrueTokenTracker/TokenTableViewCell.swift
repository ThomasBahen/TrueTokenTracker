//
//  TokenTableViewCell.swift
//  TrueTokenTracker
//
//  Created by Jim Bahen on 2018-06-29.
//  Copyright © 2018 Thomas Bahen. All rights reserved.
//

import UIKit

class TokenTableViewCell: UITableViewCell, UITextFieldDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    @IBOutlet weak var keywordLabel: UILabel!
    @IBOutlet weak var tokenNameLabel: UILabel!
    @IBOutlet weak var powerToughnessLabel: UILabel!
    @IBOutlet weak var numberOfTokensLabel: UILabel!
    
    @IBAction func TokenStepped(_ sender: UIStepper) {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
