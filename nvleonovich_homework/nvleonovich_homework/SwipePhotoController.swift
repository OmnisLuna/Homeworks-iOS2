//
//  SwipePhotoController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 19.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class SwipePhotoController: UIViewController {
    
    let animation = Animations()
    var currentUser: User = users[0]
    var images: [UIImage]!
    var photoIndex = 0
    
    @IBOutlet weak var currentPhotoView: UIView!
    @IBOutlet weak var currentImage: UIImageView!
    @IBOutlet weak var likesCount: UILabel!
    @IBOutlet weak var heartButton: UIButton!
    
    
    
    @IBAction func clickLike(_ sender: UIButton) {
        btn()
        animation.increaseElementOnTap(heartButton)
    }

    func btn(){
        currentUser.photos[photoIndex].isLikedByMe = !currentUser.photos[photoIndex].isLikedByMe
//        currentUser.photos[photoIndex].likesCount = currentUser.photos[photoIndex].isLikedByMe ? +1 : -1
        
        if currentUser.photos[photoIndex].isLikedByMe {
               currentUser.photos[photoIndex].likesCount += 1
           } else {
               currentUser.photos[photoIndex].likesCount -= 1
           }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let photosCount = currentUser.photos.count
//        for i in 0...photosCount {
//            images.append(currentUser.photos[i].pic)
//        }
        currentImage.image = currentUser.photos[photoIndex].pic
        likesCount.text = "\(currentUser.photos[photoIndex].likesCount)"
        likesCount.textColor = heartButton.isSelected ? #colorLiteral(red: 0.8094672561, green: 0, blue: 0.2113229036, alpha: 1)  : #colorLiteral(red: 0, green: 0.4539153576, blue: 1, alpha: 1)
        
        let swipeGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(onSwipe))
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @objc func onSwipe (_ recognizer: UIPanGestureRecognizer) {
//        let nextPhoto: Int = photoIndex += 1
//        let previousPhoto: Int = photoIndex -= 1
        
        switch recognizer.state {
        case .began:
            animation.nextSwipeElement()
        case .changed:
            animation.nextSwipeElement()
        case .ended:
            animation.nextSwipeElement()
            if recognizer.translation(in: self.view).x > 0 {
                self.photoIndex += 1
            }
            else {
                self.photoIndex -= 1
            }
        default: break
        }
    }
}
