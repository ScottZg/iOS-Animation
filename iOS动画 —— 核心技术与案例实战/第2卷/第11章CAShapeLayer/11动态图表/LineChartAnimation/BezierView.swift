//
//  BezierView.swift
//  LineChartAnimation
//
//  Created by jones on 5/30/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class BezierView: UIView {
    override func draw(_ rect: CGRect) {
        let  color1:UIColor = UIColor(red: 255.0 / 255.0, green: 127.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0)
        let  color2:UIColor = UIColor(red: 77.0/255.0, green: 186.0/255.0, blue: 122.0/255.0, alpha: 1.0)

        let bezierPath = UIBezierPath()
        bezierPath.lineWidth = 10.0
        bezierPath.lineCapStyle = CGLineCap.round
        bezierPath.lineJoinStyle = CGLineJoin.round
        bezierPath.move(to: CGPoint(x: 150, y: 150))
        bezierPath.addLine(to: CGPoint(x: 250, y: 250))
        bezierPath.addLine(to: CGPoint(x: 350, y: 150))
        bezierPath.close()
        color1.setStroke()
        color2.setFill()
        bezierPath.fill()
        bezierPath.stroke()

    }
}
