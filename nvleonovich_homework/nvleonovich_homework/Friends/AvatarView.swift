//
//  AvatarView.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 14.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class AvatarView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
        contentMode = .scaleAspectFill
    }

}
