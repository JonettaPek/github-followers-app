//
//  GFTextField.swift
//  GithubFollowers
//
//  Created by Jonetta Pek on 31/12/23.
//

import UIKit

class GFTextField: UITextField {
    
    convenience init() {
        self.init(frame: .zero)
        configure()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .yes
//        keyboardType = .numberPad
        returnKeyType = .go
        placeholder = "Enter a username"
    }
}
