//
//  FriendsListController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 30.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class FriendsListViewController: UITableViewController {
    
    var myFriendName = [
        "Anakin Skywalker",
        "Padme Amidala",
        "Leya Organa",
        "Han Solo",
        "Din Djarin",
    ]
    
    @IBOutlet var tableFriendsView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableFriendsView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Friend", for: indexPath) as! FriendTableViewCell
        cell.myFriendName.text = myFriendName[indexPath.row]
        return cell
    }
}
