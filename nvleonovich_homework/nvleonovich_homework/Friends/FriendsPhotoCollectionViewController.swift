//
//  FriendPhotoCollectionController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 30.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit


class FriendsPhotoCollectionViewController: UICollectionViewController {
    
    var currentUser: User!
    let animation = Animations()
    var colorDefault = #colorLiteral(red: 0, green: 0.4539153576, blue: 1, alpha: 1)
    var colorLiked = #colorLiteral(red: 0.8094672561, green: 0, blue: 0.2113229036, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
    }
        
        // MARK: UICollectionViewDataSource
        
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
        
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return currentUser.photos.count
    }
        
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoCell", for: indexPath) as! FriendsPhotoCollectionViewCell
        cell.likesCount.text = "\(currentUser.photos[indexPath.row].likesCount)"
        cell.heartButton.isSelected = currentUser.photos[indexPath.row].isLikedByMe
        cell.friendsPhoto.image = currentUser.photos[indexPath.row].pic
        if currentUser.photos[indexPath.row].isLikedByMe {
            cell.likesCount.textColor = colorLiked
        } else {
            cell.likesCount.textColor = colorDefault
        }
        
        //замыкание для тапа на ячейку
        cell.heartButtoonTap = { [weak self] in
            let row = indexPath.row
            
            self!.currentUser.photos[row].isLikedByMe = !self!.currentUser.photos[row].isLikedByMe
            if self!.currentUser.photos[row].isLikedByMe {
                self!.currentUser.photos[row].likesCount += 1
            } else {
                self!.currentUser.photos[row].likesCount -= 1
            }
            self!.collectionView.reloadItems(at: [indexPath])
            self!.animation.increaseElementOnTap(cell.heartButton)
        }
        return cell
    }
    
}

extension FriendsPhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let cellWidth = 150
            
            return CGSize(width: cellWidth, height: cellWidth)
        }
}
    
