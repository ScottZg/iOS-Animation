//
//  BlackHoleView.swift
//  AnimationBegin
//
//  Created by jones on 7/21/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class BlackHoleView: UIView {
    var blackHoleRadius:Float = 0
    func blackHoleIncrease(_ radius: Float){
        blackHoleRadius = radius
        self.setNeedsDisplay()
    }
    override func draw(_ rect: CGRect) {
        let ctx:CGContext = UIGraphicsGetCurrentContext()!
        ctx.addArc(center: CGPoint(x:self.center.x,y:self.center.y), radius: CGFloat(blackHoleRadius), startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: false)
        ctx.fillPath()
    }
}
