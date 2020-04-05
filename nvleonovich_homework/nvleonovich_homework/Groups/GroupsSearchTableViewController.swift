//
//  GroupsSearchController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 30.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class GroupsSearchTableViewController: UITableViewController {
    
    var groupName = [
        "Новости",
        "Путешествия",
        "Игры",
        "Работа",
        "Тренировки",
        "Куда сходить",
        "Рецепты",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupCell", for: indexPath) as! GroupTableViewCell
        cell.myGroupName.text = groupName[indexPath.row]
        return cell
    }
}
