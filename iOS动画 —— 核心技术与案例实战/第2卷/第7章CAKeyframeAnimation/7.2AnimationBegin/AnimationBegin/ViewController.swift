//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginButton:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        let view:UIView = UIView()
        view.backgroundColor = UIColor.red
        view.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        self.view.addSubview(view)
        
        
        
        let animation:CAKeyframeAnimation = CAKeyframeAnimation()
        animation.duration = 10.0
        animation.keyPath = "opacity"
        let valuesArray:[NSNumber] = [NSNumber(value: 0.95 as Float),
                                      NSNumber(value: 0.90 as Float),
                                      NSNumber(value: 0.88 as Float),
                                      NSNumber(value: 0.85 as Float),
                                      NSNumber(value: 0.35 as Float),
                                      NSNumber(value: 0.05 as Float),
                                      NSNumber(value: 0.0 as Float)]
        animation.values = valuesArray
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        view.layer.add(animation, forKey: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

