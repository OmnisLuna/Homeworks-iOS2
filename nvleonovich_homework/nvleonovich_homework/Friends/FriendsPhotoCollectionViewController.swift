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
        return cell
    }
    
    @IBAction func addLike() {
        
//            if buttonState == UIButton.State.highlighted {
//                buttonState = UIButton.State.normal
//                self.photoLikesCount = photoLikesCount - 1
//            } else {
//                buttonState = UIButton.State.highlighted
//                self.photoLikesCount = photoLikesCount + 1
//            }
//                return photoLikesCount
    }
        
}

    extension FriendsPhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let cellWidth = 150
            
            return CGSize(width: cellWidth, height: cellWidth)
        }
}
    
