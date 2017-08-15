//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView:UIImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.frame = CGRect(x:50,y:50,width:50,height:50)
        imageView.image = UIImage(named: "Plane.png")
        self.view.addSubview(imageView)
        let pathLine:CGMutablePath = CGMutablePath()
        pathLine.move(to: CGPoint(x:50,y:50))
        pathLine.addLine(to: CGPoint(x:300,y:50))

        let animation:CAKeyframeAnimation = CAKeyframeAnimation()
        animation.duration = 2.0
        animation.path = pathLine
        animation.keyPath = "position"
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        imageView.layer.add(animation, forKey: nil)

        /*
        let pathArc:CGMutablePath = CGMutablePath()
        pathLine.move(to: CGPoint(x:50,y:50))
        pathLine.addArc(center: CGPoint(x:200,y:200), radius: 150, startAngle: 0, endAngle:CGFloat(M_PI_2), clockwise: true)
        animation.path = pathArc
        */

    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: UIViewKeyframeAnimationOptions.calculationModeCubic, animations: {() in
                self.imageViewPlane?.frame = CGRect(x: 300, y: 300, width: 50, height: 50)
            }, completion:{(finish) in
                print("done")
            })
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

