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
    
    var currentToken: TokenStack! {
        didSet{
            tokenStepper.value = Double(currentToken.tokenCount)
            tokenNameLabel.text = currentToken.name
            powerToughnessLabel.text = currentToken.power +  "/" + currentToken.toughness
            numberOfTokensLabel.text = "Number: " + String(currentToken.tokenCount)
            
            
           let keywords = currentToken.keywords?.joined(separator: ", ") ?? ""
            keywordLabel.text = "Keywords: " + keywords
          
        }
    }
    
    @IBOutlet weak var keywordLabel: UILabel!
    @IBOutlet weak var tokenNameLabel: UILabel!
    @IBOutlet weak var powerToughnessLabel: UILabel!
    @IBOutlet weak var numberOfTokensLabel: UILabel!
    @IBOutlet weak var tokenStepper: UIStepper!
    
    @IBAction func TokenStepped(_ sender: UIStepper) {
        currentToken.tokenCount = Int(sender.value)
        numberOfTokensLabel.text = "Number: " + String(currentToken.tokenCount)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
