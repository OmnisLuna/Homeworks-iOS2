//
//  HeartButtonControl.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 06.04.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class LikesBarControl: UIControl {

//    var buttonState = UIButton.State.highlighted
//    
//    var photoLikesCount = 0
//    
//    func clickLike(photoLikesCount: Int) -> Int {
//        if buttonState == UIButton.State.highlighted {
//            buttonState = UIButton.State.normal
//            self.photoLikesCount = photoLikesCount - 1
//        } else {
//            buttonState = UIButton.State.highlighted
//            self.photoLikesCount = photoLikesCount + 1
//        }
//        return photoLikesCount
//    }
//    
//     enum Day: Int {
//         case monday, tuesday, wednesday, thursday, friday, saturday, sunday
//         
//         static let allDays: [Day] = [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
//         
//         var title: String {
//             switch self {
//             case .monday: return "ПН"
//             case .tuesday: return "ВТ"
//             case .wednesday: return "СР"
//             case .thursday: return "ЧТ"
//             case .friday: return "ПТ"
//             case .saturday: return "СБ"
//             case .sunday: return "ВС"
//             }
//         }
//     }
//    
//    var selectedDay: Day? = nil {
//        didSet {
//            self.updateSelectedDay()
//            self.sendActions(for: .valueChanged)
//        }
//    }
//    
//    private var button = UIButton()
//    private var stackView: UIStackView!
//    
//
//
//     @IBDesignable class WeekDayPicker: UIControl {
//         
//         var selectedDay: Day? = nil {
//             didSet {
//                 self.updateSelectedDay()
//                 self.sendActions(for: .valueChanged)
//             }
//         }
//         
//         private var buttons: [UIButton] = []
//         private var stackView: UIStackView!
//         
//         override init(frame: CGRect) {
//             super.init(frame: frame)
//             self.setupView()
//         }
//         
//         required init?(coder aDecoder: NSCoder) {
//             super.init(coder: aDecoder)
//             self.setupView()
//         }
//         
//         private func setupView() {
//            
//                 let button = UIButton(type: .system)
//                 button.setTitle(day.title, for: .normal)
//                 button.setTitleColor(.lightGray, for: .normal)
//                 button.setTitleColor(.white, for: .selected)
//                 button.addTarget(self, action: #selector(selectDay(_:)), for: .touchUpInside)
//        
//             
//             stackView = UIStackView(arrangedSubviews: self.buttons)
//             
//             self.addSubview(stackView)
//             
//             stackView.spacing = 8
//             stackView.axis = .horizontal
//             stackView.alignment = .center
//             stackView.distribution = .fillEqually
//         }
//         
//         private func updateSelectedDay() {
//             for (index, button) in self.buttons.enumerated() {
//                 guard let day = Day(rawValue: index) else { continue }
//                 button.isSelected = day == self.selectedDay
//             }
//         }
//         
//         @objc private func selectDay(_ sender: UIButton) {
//             guard let index = self.buttons.index(of: sender) else { return }
//             guard let day = Day(rawValue: index) else { return }
//             self.selectedDay = day
//         }
//         
//         override func layoutSubviews() {
//             super.layoutSubviews()
//             stackView.frame = bounds
//         }
//         
//     }
//
//}
}
