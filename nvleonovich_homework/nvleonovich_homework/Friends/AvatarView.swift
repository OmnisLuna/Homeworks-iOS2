//
//  AvatarView.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 05.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

@IBDesignable class AvatarView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowRadius = 3
        layer.shadowOpacity = 3
        layer.shadowOffset = CGSize.zero
    }

}
