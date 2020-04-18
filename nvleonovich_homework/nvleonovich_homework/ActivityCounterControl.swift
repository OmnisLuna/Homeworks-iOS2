//
//  CommonCounterControl.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 17.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

//enum ActivityType {
//    case likesDefault
//    case likesSelected
//    case sharesDefault
//    case sharesSelected
//    case commentsDefault
//    case commentsSelected
//    case viewsDefault
//    case viewsSelected
//}

//в работе: перевожу стэки в новостях на контролы
@IBDesignable class ActivityCounterControl: UIControl {
//    
//    var viewElements: [UIView] = []
//    
//@IBInspectable private var stackView: UIStackView!
//    
//    override init(frame: CGRect) {
//         super.init(frame: frame)
//        self.setupView(type: .likesDefault)
//        self.setupView(type: .sharesDefault)
//        self.setupView(type: .commentsDefault)
//        self.setupView(type: .viewsDefault)
//    }
//        
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        self.setupView(type: .likesDefault)
//        self.setupView(type: .sharesDefault)
//        self.setupView(type: .commentsDefault)
//        self.setupView(type: .viewsDefault)
//    }
//    
//    @objc func onTap(_ sender: UIButton)  {
//    }
//
//    private func setupView(type: ActivityType) {
//        
//        let type = type
//        
//        var iconName: String
//        
//        switch type {
//            case .likesDefault: return iconName = "heart"
//            case .likesSelected: return iconName = "heart.fill"
//            case .sharesDefault: return iconName = "arrowshape.turn.up.left"
//            case .sharesSelected: return iconName = "arrowshape.turn.up.left.fill"
//            case .commentsDefault: return iconName = "captions.bubble"
//            case .commentsSelected: return iconName = "captions.bubble.fill"
//            case .viewsDefault: return iconName = "eye"
//            case .viewsSelected: return iconName = "eye.fill"
//        }
//        
//        let count = UILabel()
//        count.textColor = #colorLiteral(red: 0, green: 0.4539153576, blue: 1, alpha: 1)
//        viewElements.append(count)
//        
//        let iconButton = UIButton(type: .system)
//        iconButton.setImage(UIImage(systemName: iconName), for: .normal)
//        iconButton.setImage(UIImage(systemName: iconName), for: .selected)
//        iconButton.tintColor = #colorLiteral(red: 0, green: 0.4539153576, blue: 1, alpha: 1)
//        iconButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        iconButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
//        iconButton.addTarget(self, action: #selector(onTap(_:)), for: .touchUpInside)
//        viewElements.append(iconButton)
//        
//        stackView = UIStackView(arrangedSubviews: self.viewElements)
//
//        self.addSubview(stackView)
//        stackView.spacing = 3
//        stackView.axis = .horizontal
//        stackView.alignment = .center
//        stackView.distribution = .fillEqually
//    
//    }
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        stackView.frame = bounds
//    }
    

//    func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool
//    func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool
//    func endTracking(_ touch: UITouch?, with event: UIEvent?)
//    func cancelTracking(with event: UIEvent?)
}
