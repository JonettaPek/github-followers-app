//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Jonetta Pek on 31/12/23.
//

import UIKit

class GFButton: UIButton {
    
    convenience init(backgroundColour: UIColor, title: String) {
        self.init(frame: .zero)
        backgroundColor = backgroundColour
        setTitle(title, for: .normal)
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
        
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
}
