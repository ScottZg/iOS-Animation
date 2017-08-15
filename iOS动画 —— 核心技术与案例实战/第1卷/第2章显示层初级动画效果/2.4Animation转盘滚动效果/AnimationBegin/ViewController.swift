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
    var index:Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView()
        imageView?.bounds = CGRect(x: 0, y: 0, width: 400, height: 400)
        imageView?.center = self.view.center
        imageView?.image = UIImage(named: "turntable.png")
        imageView?.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imageView!)
    }

    
    override func viewWillAppear(_ animated: Bool) {

        //      CGAffineTransform:旋转
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDidStop(#selector(ViewController.animationEnd))
        UIView.setAnimationDuration(0.01)//动画周期设置
        let angle:CGFloat = CGFloat(M_PI_2);
        imageView!.transform = CGAffineTransform(rotationAngle: angle)// 3.14
        UIView.commitAnimations()//动画提交
 
        
    }

    func animationEnd(){
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDidStop(#selector(ViewController.animationEnd))
        UIView.setAnimationDuration(0.01)//动画周期设置
        let angleStart:CGFloat = CGFloat(M_PI_2)
        index += 1
        let angle:CGFloat = CGFloat(index)*angleStart
        imageView!.transform = CGAffineTransform(rotationAngle: angle)
        UIView.commitAnimations()
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

