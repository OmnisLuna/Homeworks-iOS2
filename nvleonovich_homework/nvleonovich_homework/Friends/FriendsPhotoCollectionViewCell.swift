//
//  FriendsPhotoCollectionViewCell.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 01.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class FriendsPhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var friendsPhoto: UIImageView!
    @IBOutlet weak var likesCount: UILabel!
    @IBOutlet weak var heartButton: UIButton!
    
    var heartButtoonTap: (() -> ())?
    
    @IBAction func clickLike(_ sender: UIButton) {
        heartButtoonTap?()
    }
}
