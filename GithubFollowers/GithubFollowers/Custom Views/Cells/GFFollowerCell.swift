//
//  GFFollowerCell.swift
//  GithubFollowers
//
//  Created by Jonetta Pek on 1/1/24.
//

import UIKit

class GFFollowerCell: UICollectionViewCell {
    
    static let identifier = "GFFollowerCell"
    
    let avatarImageView = GFAvatarImageView()
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    convenience init() {
        self.init(frame: .zero)
        backgroundColor = .systemCyan
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func set(follower: Follower) {
        
        usernameLabel.text = follower.login
    }
}
