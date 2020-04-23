//
//  FriendPhotoView.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 19.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class FriendPhotoView: UIView {

    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(openFriendPhoto))
        recognizer.numberOfTapsRequired = 1    // Количество нажатий, необходимое для распознавания
        recognizer.numberOfTouchesRequired = 1 // Количество пальцев, которые должны коснуться экрана для распознавания
        return recognizer
    }()
    
    @IBAction func openFriendPhoto(segue: UIStoryboardSegue) {
    }
    
    override init (frame: CGRect)
    {
        super.init(frame: frame)
        addGestureRecognizer(tapGestureRecognizer)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addGestureRecognizer(tapGestureRecognizer)
    }

}
