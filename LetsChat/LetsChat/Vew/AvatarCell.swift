//
//  AvatarCell.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 06/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import UIKit


class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
}
