//
//  NewsCard.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 13.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class NewsCard: UITableViewCell {
    
    @IBOutlet weak var postOwnerAvatar: UIImageView!
    @IBOutlet weak var ownerName: UILabel!
    @IBOutlet weak var publishDate: UILabel!
    @IBOutlet weak var postDescription: UILabel!
    @IBOutlet weak var postPhoto: UIImageView!
    @IBOutlet weak var likesCount: UILabel!
    @IBOutlet weak var viewsCount: UILabel!
    @IBOutlet weak var sharingCount: UILabel!
    @IBOutlet weak var commentsCount: UILabel!

}
