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
    var groups: Array<Group>
    var friends: Array<Friend>
    var authParams: UserAuthParameters
    
    init(authParams: UserAuthParameters, groups: Array<Group>, friends: Array<Friend>) {
        self.authParams = authParams
        self.groups = groups
        self.friends = friends
    }
}

class UserAuthParameters {
    let login: String
    let password: String
    
    init(login: String, password: String) {
        self.login = login
        self.password = password
    }
}

class Group {
    var name: String
    var avatar: UIImage
    
    init(name: String, avatar: UIImage) {
    self.name = name
    self.avatar = avatar
    }
}

class Friend {
    var name: String
    var avatar: UIImage
    var photos: Array<Photo>
    
    init(name: String, avatar: UIImage, photos: Array<Photo>) {
    self.name = name
    self.avatar = avatar
    self.photos = photos

    }
}

class Photo {
    var id: Int
    var description: String?
    var likesCount: Int
    var pic: UIImage
    
    init(id: Int, description: String?, likesCount: Int, pic: UIImage) {
        self.id = id
        self.description = description
        self.likesCount = likesCount
        self.pic = pic
    }
}
