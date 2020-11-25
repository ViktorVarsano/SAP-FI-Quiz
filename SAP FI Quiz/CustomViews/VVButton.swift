//
//  VVButton.swift
//  SAP FI Quiz
//
//  Created by Viktor Varsano on 29.10.20.
//  Copyright © 2020 Viktor Varsano. All rights reserved.
//

import Foundation
import UIKit


class VVButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(Colors.vikoDarkGray, for: .normal)
        backgroundColor     = .white
        titleLabel?.font    = UIFont(name: Fonts.avenirNextMedium, size: 20)
        layer.cornerRadius  = frame.size.height/2 
    }
    
    
}
