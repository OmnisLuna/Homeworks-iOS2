//
//  GroupsListController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 30.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class GroupsListTableViewController: UITableViewController {
    
    var groupName = [
            "Книги",
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as! MyGroupTableViewCell
        cell.name.text = groupName[indexPath.row]
        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        
        if segue.identifier == "AddGroup" {
        
            let allGroupsController = segue.source as! GroupsSearchTableViewController
        
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                let group = allGroupsController.groupName[indexPath.row]
                if !groupName.contains(group) {
                    groupName.append(group)
                    tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groupName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
