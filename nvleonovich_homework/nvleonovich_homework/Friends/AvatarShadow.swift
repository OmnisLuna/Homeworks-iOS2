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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = false
    }
    
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
}
