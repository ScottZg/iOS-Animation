//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView:UIImageView?
    var index:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView()
        imageView?.frame = UIScreen.main.bounds
        imageView?.image = UIImage(named: "turntable.png")
        imageView?.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(imageView!)
        animationCircle()

    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func animationCircle() {
        UIView.animateKeyframes(withDuration: 0.2, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {() in
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/4, animations: {() in
                self.index += 1
                let angle:CGFloat = CGFloat(M_PI_2)*CGFloat(self.index)
                self.imageView?.transform = CGAffineTransform(rotationAngle: angle)
            })
            UIView.addKeyframe(withRelativeStartTime: 1/4, relativeDuration: 1/4, animations: {() in
                self.index += 1
                let angle:CGFloat = CGFloat(M_PI_2)*CGFloat(self.index)
                self.imageView?.transform = CGAffineTransform(rotationAngle: angle)
            })
            UIView.addKeyframe(withRelativeStartTime: 2/4, relativeDuration: 1/4, animations: {() in
                self.index += 1
                let angle:CGFloat = CGFloat(M_PI_2)*CGFloat(self.index)
                self.imageView?.transform = CGAffineTransform(rotationAngle: angle)
            })
            UIView.addKeyframe(withRelativeStartTime: 3/4, relativeDuration: 1/4, animations: {() in
                self.index += 1
                let angle:CGFloat = CGFloat(M_PI_2)*CGFloat(self.index)
                self.imageView?.transform = CGAffineTransform(rotationAngle: angle)
            })
            }, completion:{(finish) in
                self.animationCircle()
                
        })
    }
 
    
    override func viewDidAppear(_ animated: Bool) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

