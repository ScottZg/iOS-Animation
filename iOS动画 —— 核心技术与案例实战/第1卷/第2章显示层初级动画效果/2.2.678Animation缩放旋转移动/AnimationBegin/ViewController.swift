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
    var index:Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton = UIButton(frame: CGRect(x: 20, y: 230, width: self.view.frame.width-20*2,height: 50))
        loginButton!.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton!.setTitle("登陆", for: UIControlState())
        self.view.addSubview(loginButton!)
    }


    override func viewWillAppear(_ animated: Bool) {
        
        //      CGAffineTransform:旋转
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDuration(1)//动画周期设置
        let angle:CGFloat = CGFloat(M_PI_2);
        loginButton!.transform = CGAffineTransform(rotationAngle: angle)// 3.14
        UIView.commitAnimations()//动画提交
        /*
        //      CGAffineTransform:缩放
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDelegate(self)//设置回调对象
        UIView.setAnimationDuration(1)//动画周期设置
        loginButton!.transform = CGAffineTransform(scaleX: 0.7, y: 1.2)
        UIView.commitAnimations()//动画提交
         */
        
        /*
        //      CGAffineTransform:移动
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDelay(1)
        UIView.setAnimationCurve(UIViewAnimationCurve.easeInOut)
        UIView.setAnimationsEnabled(true)
        UIView.setAnimationDuration(3)//动画周期设置
        UIView.setAnimationRepeatAutoreverses(false)
        UIView.setAnimationRepeatCount(2)
        loginButton!.transform = CGAffineTransform(translationX: 0, y: 300)// x += 100
        UIView.commitAnimations()//动画提交
        */
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

