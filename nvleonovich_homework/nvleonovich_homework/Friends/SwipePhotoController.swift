//
//  SwipePhotoController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 19.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class SwipePhotoController: UIViewController {
    
    @IBOutlet weak var currentView: FullSIzePhotoView!
    @IBOutlet weak var bufferView: FullSIzePhotoView!
    let animation = Animations()
    var currentUser: User = users[0]
    var photoIndex = 0
    var animator: UIViewPropertyAnimator!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        let swipeGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(onSwipe))
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    private func configureViews() {
        currentView.heartButton.isSelected = currentUser.photos[photoIndex].isLikedByMe
        currentView.likesCount.text = "\(currentUser.photos[photoIndex].likesCount)"
        currentView.likesCount.textColor = currentView.heartButton.isSelected ? #colorLiteral(red: 0.8094672561, green: 0, blue: 0.2113229036, alpha: 1)  : #colorLiteral(red: 0, green: 0.4539153576, blue: 1, alpha: 1)
        currentView.image.image = currentUser.photos[photoIndex].pic
        bufferView.alpha = 0
    }
    
    private func getSwipeRightIndex() ->Int {
        var index = photoIndex + 1
        if index > currentUser.photos.count - 1 { index = 0 }
        return index

    }

    private func getSwipeLeftIndex() -> Int {
        var index = photoIndex - 1
        if index < 0 { index = currentUser.photos.count - 1 }
        return index
    }
    
    @objc func onSwipe (_ recognizer: UIPanGestureRecognizer) {
        switch recognizer.state {
        case .began:
            //делаем непрозрачным буффер вью
            bufferView.alpha = 1
            
        case .changed:
            let translation = recognizer.translation(in: self.view)
            self.currentView.transform = CGAffineTransform(translationX: translation.x  ,y: 0)
            
            var offset: CGFloat
            var index: Int
            //в зависимости от того, в какую сторону свайп - определяем положение буффер вью
            if translation.x < 0 {
                index = getSwipeLeftIndex()
                offset = view.frame.width + 20
            } else {
                index = getSwipeRightIndex()
                offset = -(view.frame.width + 20)
            }
            bufferView.image.image = currentUser.photos[index].pic
            self.bufferView.transform = CGAffineTransform(translationX: translation.x + offset ,y: 0)
            
        case .ended:
            let translation = recognizer.translation(in: self.view)
            let halfView = view.frame.width / 2
            
            //если пользователь свайпнул меньше половины экрана, то переход на следующее фото не делаем
            if  abs(translation.x) > halfView {
                
                let animation = CABasicAnimation(keyPath: "transform.scale")
                animation.fromValue = 1
                animation.toValue = 0.7
                animation.duration = 0.5
                animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
                currentView.layer.add(animation, forKey: nil)
                
                let oldCurrentView = currentView
                currentView = bufferView
                bufferView = oldCurrentView
                
                if translation.x > 0 {
                    photoIndex = getSwipeRightIndex()
                } else {
                    photoIndex = getSwipeLeftIndex()
                }
            }
            
            UIView.animate(
                withDuration: 0.4,
                delay: 0,
                options: [],
                animations: {
                    self.currentView.transform = .identity
                    var offset: CGFloat
                    
                    if abs(translation.x) > halfView {
                            if translation.x > 0 {
                            offset = self.view.frame.width + 20
                        } else {
                            offset = -(self.view.frame.width + 20)
                        }
                    } else {
                            if translation.x < 0 {
                                offset = self.view.frame.width + 20
                            } else {
                                offset = -(self.view.frame.width + 20)
                            }
                    }
                    self.bufferView.transform = CGAffineTransform(translationX: offset ,y: 0)
            },
                completion: { _ in self.bufferView.alpha = 0 })
            
        default: break
        }
    }

    @IBAction func clickLike(_ sender: UIButton) {
        currentUser.photos[photoIndex].isLikedByMe = !currentUser.photos[photoIndex].isLikedByMe
        currentView.heartButton.isSelected = currentUser.photos[photoIndex].isLikedByMe
        if currentUser.photos[photoIndex].isLikedByMe {
               currentUser.photos[photoIndex].likesCount += 1
           } else {
               currentUser.photos[photoIndex].likesCount -= 1
           }
        animation.increaseElementOnTap(currentView.heartButton)
        currentView.likesCount.text = "\(currentUser.photos[photoIndex].likesCount)"
        currentView.likesCount.textColor = currentView.heartButton.isSelected ? #colorLiteral(red: 0.8094672561, green: 0, blue: 0.2113229036, alpha: 1)  : #colorLiteral(red: 0, green: 0.4539153576, blue: 1, alpha: 1)
    }
}
