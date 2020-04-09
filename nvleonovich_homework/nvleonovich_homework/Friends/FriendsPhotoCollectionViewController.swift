//
//  FriendPhotoCollectionController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 30.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class FriendsPhotoCollectionViewController: UICollectionViewController {
    
    var photoLikesCount = [0 , 2 , 10]
    var buttonState = [false, true, false]
    var colorDefault = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    var colorLiked = #colorLiteral(red: 0.183355093, green: 0.4040111005, blue: 0.9123467207, alpha: 1)
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.collectionView.delegate = self
    }
        
        // MARK: UICollectionViewDataSource
        
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
        
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
        
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoCell", for: indexPath) as! FriendsPhotoCollectionViewCell
        cell.LikesCount.text = "\(photoLikesCount[indexPath.row])"
        cell.HeartButton.isSelected = buttonState[indexPath.row]
        
        if buttonState[indexPath.row] {
            cell.LikesCount.textColor = colorLiked
        } else {
            cell.LikesCount.textColor = colorDefault
        }
        
        cell.heartButtoonTap = { [weak self] in
            let a = indexPath.row
            
            self!.buttonState[a] = !self!.buttonState[a]
            if self!.buttonState[a] {
                self!.photoLikesCount[a] += 1
            } else {
                self!.photoLikesCount[a] -= 1
            }
            self!.collectionView.reloadItems(at: [indexPath])
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
    
