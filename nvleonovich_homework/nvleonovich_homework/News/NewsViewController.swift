//
//  NewsViewController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 13.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class NewsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNews.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newsCard = myNews[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCard", for: indexPath) as! NewsCard
        cell.postOwnerAvatar.image = newsCard.owner.avatar
        cell.ownerName.text = "\(newsCard.owner.name)"
        cell.postPhoto.image = newsCard.photos.pic
        cell.publishDate.text = newsCard.publishDate
        cell.postDescription.text = newsCard.description
        cell.viewsCount.text = "\(newsCard.viewsCount)"
        cell.likesCount.text = "\(newsCard.likesCount)"
        cell.commentsCount.text = "\(newsCard.commentsCount)"
        cell.sharingCount.text = "\(newsCard.reportsCount)"
        
        return cell
    }
}
