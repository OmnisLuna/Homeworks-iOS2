//
//  FriendsListController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 30.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

struct Section {
    var title: String
    var users: Array<User>
}

class FriendsListViewController: UITableViewController {
    
    @IBOutlet var tableFriendsView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!

    var sections = Array<Section>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableFriendsView.dataSource = self
        searchBar.delegate = self
        sortFriendsByName(friends: users)
    }
    
    //friends table sections
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }

    
    //friends table rows
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Friend", for: indexPath) as! FriendTableViewCell
        cell.myFriendName.text = sections[indexPath.section].users[indexPath.row].name
        cell.myFriendAvatar.image = sections[indexPath.section].users[indexPath.row].avatar
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getFriendPhotos" {
            guard let target = segue.destination as? FriendsPhotoCollectionViewController,
                let selectedIndexPath = tableView.indexPathForSelectedRow else {
                return
            }
            let currentUser = sections[selectedIndexPath.section].users[selectedIndexPath.row]
            target.currentUser = currentUser
        }
    }
    
    func sortFriendsByName(friends: Array<User>) {
        let friendsSortedList = Dictionary(grouping: friends, by: { $0.name.prefix(1) })
        sections = friendsSortedList.map {Section(title: String($0.key), users: $0.value)}
        sections.sort {$0.title < $1.title }
    }
   
}

extension FriendsListViewController: UISearchBarDelegate {
        
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            sortFriendsByName(friends: users)
        } else {
            let foundFriends = users.filter({ (friend: User) -> Bool in
                return friend.name.lowercased().contains(searchText.lowercased())
            })
            sortFriendsByName(friends: foundFriends)
        }
        tableView.reloadData()
    }
}

