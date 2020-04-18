//
//  GroupsData.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 13.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import Foundation

//var groupName = [
//    "Новости",
//    "Путешествия",
//    "Игры",
//    "Работа",
//    "Тренировки",
//    "Куда сходить",
//    "Рецепты",
//]

var allGroups: Array<Group> = [news, travel, games, work, trainings, wherego]
var news = Group(id: 1, name: "Новости", avatar: #imageLiteral(resourceName: "dfsdfs"))
var travel = Group(id: 2, name: "Путешествия", avatar: #imageLiteral(resourceName: "dfsdfs"))
var games = Group(id: 3, name: "Игры", avatar: #imageLiteral(resourceName: "dfsdfs"))
var work = Group(id: 4, name: "Работа", avatar: #imageLiteral(resourceName: "dfsdfs"))
var trainings = Group(id: 5, name: "Тренировки", avatar: #imageLiteral(resourceName: "dfsdfs"))
var wherego = Group(id: 6, name: "Куда сходить", avatar: #imageLiteral(resourceName: "dfsdfs"))
