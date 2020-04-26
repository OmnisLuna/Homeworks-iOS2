//
//  UsersData.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 13.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import Foundation

//var myFriendName = [
//    "Anakin Skywalker",
//    "Padme Amidala",
//    "Leya Organa",
//    "Han Solo",
//    "Din Djarin",
//]
var users: Array<User> = [anakin, leia]

var anakin = User(id: 1, login: "String", password: "String", name: "Anakin Skywalker", avatar: #imageLiteral(resourceName: "anakin.m6HvM"), photos: [one, four, one, four, two], groups: [news])
var leia = User(id: 2, login: "String", password: "String", name: "Leia Organa", avatar: #imageLiteral(resourceName: "leiatop1-650x574"), photos: [two, three, one, four, two, three, one], groups: [travel])

var one = Photo(id: 1, description: nil , likesCount: 0, isLikedByMe: false, pic: #imageLiteral(resourceName: "DeathStarII"))
var two = Photo(id: 2, description: nil, likesCount: 2, isLikedByMe: true, pic: #imageLiteral(resourceName: "DeathStarII"))
var three = Photo(id: 3, description: nil, likesCount: 0, isLikedByMe: false, pic: #imageLiteral(resourceName: "5878a396dd0895ed118b49a4"))
var four = Photo(id: 4, description: nil, likesCount: 0, isLikedByMe: false, pic: #imageLiteral(resourceName: "anakin_council_ROTS"))
