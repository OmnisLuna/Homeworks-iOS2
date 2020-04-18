//
//  AvatarShadow.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 13.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

@IBDesignable
class AvatarShadow: UIView {
    
    let animation = Animations()
    
    @IBInspectable var color: UIColor = .black {
        didSet {
            self.updateColor()
        }
    }
    
    @IBInspectable var radius: CGFloat = 5 {
            didSet {
                self.updateRadius()
            }
    }
    
    @IBInspectable var opacity: CGFloat = 1 {
            didSet {
                self.updateOpacity()
            }
    }
    
    @IBInspectable var offset: CGSize = .zero {
            didSet {
                self.updateOffset()
            }
    }
    
    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        recognizer.numberOfTapsRequired = 1    // Количество нажатий, необходимое для распознавания
        recognizer.numberOfTouchesRequired = 1 // Количество пальцев, которые должны коснуться экрана для распознавания
        return recognizer
    }()
    
    @objc func onTap() {
        animation.reactToClickOnAvatar(self)
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
    
    func updateColor() {
        self.layer.shadowColor = self.color.cgColor
    }
    
    func updateRadius() {
        self.layer.shadowRadius = self.radius
    }
    
    func updateOpacity() {
        self.layer.shadowOpacity = Float(self.opacity)
    }
    
    func updateOffset() {
        self.layer.shadowOffset = offset
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = false
    }
}
