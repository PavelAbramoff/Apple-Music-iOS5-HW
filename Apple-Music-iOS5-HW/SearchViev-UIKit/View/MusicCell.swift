//
//  MusicCell.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 02.09.2022.
//

import UIKit

class MusicCell: UITableViewCell {
    
    
    // MARK: Elements
    var musicImageView = UIImageView()
    var musicTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(musicImageView)
        addSubview(musicTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setsImagesConstraints()
        setsTitlelabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(music: Music) {
        musicImageView.image = music.image
        musicTitleLabel.text = music.title
    }
    
    func configureImageView() {
        musicImageView.layer.cornerRadius = 10
        musicImageView.clipsToBounds = true
        
    }
    
    func configureTitleLabel() {
        musicTitleLabel.numberOfLines = 0
        musicTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    // MARK: Constraints
    func setsImagesConstraints() {
        musicImageView.translatesAutoresizingMaskIntoConstraints                                                   = false
        musicImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                   = true
        musicImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                     = true
        musicImageView.heightAnchor.constraint(equalToConstant: 100).isActive                                       = true
        musicImageView.widthAnchor.constraint(equalTo: musicImageView.heightAnchor, multiplier: 16/9).isActive     = true
        
    }
    
    func setsTitlelabelConstraints() {
        musicTitleLabel.translatesAutoresizingMaskIntoConstraints                                                  = false
        musicTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                  = true
        musicTitleLabel.leadingAnchor.constraint(equalTo: musicImageView.trailingAnchor, constant: 20).isActive    = true
        musicTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                      = true
        musicTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive                 = true
        
    }
}

