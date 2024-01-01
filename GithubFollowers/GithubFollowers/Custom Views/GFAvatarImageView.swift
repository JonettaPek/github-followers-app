//
//  GFAvatarImageView.swift
//  GithubFollowers
//
//  Created by Jonetta Pek on 1/1/24.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeholderImage = UIImage(named: "avatar-placehold", in: .main, with: nil)!

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
        clipsToBounds = true
        image = placeholderImage
    }
}
