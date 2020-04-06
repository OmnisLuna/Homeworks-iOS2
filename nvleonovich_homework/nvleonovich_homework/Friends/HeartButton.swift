////
////  HeartButton.swift
////  nvleonovich_homework
////
////  Created by nvleonovich on 06.04.2020.
////  Copyright © 2020 nvleonovich. All rights reserved.
////

import UIKit

@IBDesignable class HeartButton: UIImageView {

    let maskLayer = CAShapeLayer()
    let starPath = UIBezierPath()

    override func awakeFromNib() {
        super.awakeFromNib()
        draw(CGRect(x: 22, y: 0, width: 22, height: 22))

    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setStrokeColor(UIColor.blue.cgColor)
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 40, y: 20))
        path.addLine(to: CGPoint(x: 45, y: 40))
        path.addLine(to: CGPoint(x: 65, y: 40))
        path.addLine(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 60, y: 70))
        path.addLine(to: CGPoint(x: 40, y: 55))
        path.addLine(to: CGPoint(x: 20, y: 70))
        path.addLine(to: CGPoint(x: 30, y: 50))
        path.addLine(to: CGPoint(x: 15, y: 40))
        path.addLine(to: CGPoint(x: 35, y: 40))
        path.close()
        path.stroke()
    }
}
