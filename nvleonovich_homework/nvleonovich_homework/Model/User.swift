//
//  UserProfile.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 01.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import Foundation
import UIKit

class User {
    let id: Int
    var login: String
    var password: String
    var name: String
    var avatar: UIImage
    var photos: Array<Photo>
    var groups: Array<Group>
    
    init(id: Int, login: String, password: String, name: String, avatar: UIImage, photos: Array<Photo>, groups: Array<Group>) {
        self.id = id
        self.login = login
        self.password = password
        self.name = name
        self.avatar = avatar
        self.photos = photos
        self.groups = groups
    }
}

class Group {
    let id: Int
    var name: String
    var avatar: UIImage
    
    init(id: Int, name: String, avatar: UIImage) {
    self.id = id
    self.name = name
    self.avatar = avatar
    }
}

class Photo {
    var id: Int
    var description: String?
    var likesCount: Int
    var isLikedByMe: Bool
    var pic: UIImage
    
    init(id: Int, description: String?, likesCount: Int, isLikedByMe: Bool, pic: UIImage) {
        self.id = id
        self.description = description
        self.likesCount = likesCount
        self.isLikedByMe = isLikedByMe
        self.pic = pic
    }
}
    
class Record {
    
    let id: Int
    var owner: User
    var publishDate: String
    var description: String
    var photos: Photo
    var likesCount: Int
    var commentsCount: Int
    var reportsCount: Int
    var viewsCount: Int
    
    
    init(id: Int, owner: User, publishDate: String, description: String, photos: Photo, likesCount: Int, commentsCount: Int, reportsCount: Int, viewsCount: Int) {
        self.id = id
        self.description = description
        self.photos = photos
        self.owner = owner
        self.publishDate = publishDate
        self.likesCount = likesCount
        self.commentsCount = commentsCount
        self.reportsCount = reportsCount
        self.viewsCount = viewsCount
    }
}
