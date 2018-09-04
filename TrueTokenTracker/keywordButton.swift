//
//  keywordButton.swift
//  TrueTokenTracker
//
//  Created by Tom  Bahen on 2018-09-04.
//  Copyright © 2018 Thomas Bahen. All rights reserved.
//

import UIKit

class keywordButton: UIButton {

  var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
       layer.borderWidth = 1.0
       layer.cornerRadius = frame.size.height/6
        
        addTarget(self, action: #selector(keywordButton.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    
    func activateButton (bool: Bool) {
        isOn = bool
        
        let color = bool ?  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1): .clear
        let textColor = bool ? UIColor.white : #colorLiteral(red: 0, green: 0.6640413404, blue: 1, alpha: 1)
    
        
        backgroundColor = color
        setTitleColor(textColor, for: .normal)
    }
}
