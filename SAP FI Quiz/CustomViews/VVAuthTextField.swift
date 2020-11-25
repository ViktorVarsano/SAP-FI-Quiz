//
//  VVAuthTextField.swift
//  SAP FI Quiz
//
//  Created by Viktor Varsano on 29.10.20.
//  Copyright © 2020 Viktor Varsano. All rights reserved.
//

import Foundation
import UIKit

class VVAuthTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpField()
    }

    
    func setUpField() {
        borderStyle = .none
        layer.cornerRadius = frame.size.height/2
        tintColor = Colors.vikoDarkGray
        textColor = Colors.vikoDarkGray
        font = UIFont(name: Fonts.avenirNextMedium, size: 16)
        backgroundColor = UIColor.white.withAlphaComponent(0.7)
        autocorrectionType = .no
        clipsToBounds = true
        
        let placeholder = self.placeholder != nil ? self.placeholder! : ""
        let placeholderFont = UIFont(name: Fonts.avenirNextMedium, size: 16)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: Colors.vikoDarkGray, NSAttributedString.Key.font: placeholderFont as Any])
        
        let indentView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        leftView = indentView
        leftViewMode = .always
    }
}

