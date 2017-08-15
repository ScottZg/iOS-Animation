//
//  ViewController.swift
//  ButtonAnimation
//
//  Created by zhanggui on 2017/8/15.
//  Copyright © 2017年 zhanggui. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CAAnimationDelegate {

    @IBOutlet weak var imageView: UIImageView!
    var loginButton: UIButton!
    var index = 0
    var loginButtonRound: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        //add loginButton
//        loginButton = UIButton.init(frame: CGRect.init(x: 22, y: 220, width: view.frame.width-20*2, height: 50))
//        loginButton?.backgroundColor = UIColor.init(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
//        loginButton.addTarget(self, action: #selector(buttonAction), for: UIControlEvents.touchUpInside)
//        loginButton?.setTitle("登录", for: UIControlState.normal)
//        view.addSubview(loginButton!)
        
//        
//        loginButtonRound = UIButton.init(frame: CGRect.init(x:20, y: 300, width: view.frame.width-20*2, height: 50))
//        loginButtonRound?.backgroundColor = UIColor.init(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
//        loginButtonRound?.setTitle("登录", for: UIControlState.normal)
//        view.addSubview(loginButtonRound!)
    }
    //要在View视图整体展现之前完成动画实现，所以放置到viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        //        Method1
//        UIView.animate(withDuration: 1) {
//            let rect: CGRect  = self.loginButton!.frame
//            self.loginButton?.frame = CGRect.init(x: 20, y: rect.origin.y, width: rect.size.width, height: rect.size.height)
//        }
//        print(loginButton?.center)
   
        //Method 2
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        let rect: CGRect  = self.loginButton!.frame
//        self.loginButton?.frame = CGRect.init(x: 20, y: rect.origin.y, width: rect.size.width, height: rect.size.height)
//        UIView.commitAnimations()
       
        
//        //Method 3
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton?.center = CGPoint.init(x: 187.5, y: 245.0)
//        UIView.commitAnimations()
        //Method 4
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton?.frame = CGRect.init(x: 0, y: 230, width: loginButton.frame.size.width*0.7, height: loginButton.frame.size.height*1.2)
//        UIView.commitAnimations()
        
//        //Method 5  缩放
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton.transform = CGAffineTransform.init(scaleX: 0.5, y: 1)
//        UIView.commitAnimations()
        
//        //Method 6  旋转 这里是弧度
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi/4))
//        UIView.commitAnimations()
        
//        //Method 6 位移
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
////        UIView.setAnimationRepeatAutoreverses(true)
//        loginButton.transform = CGAffineTransform.init(translationX: -20, y: 300)
//        UIView.commitAnimations()
//
        //抽奖盘
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDuration(0.1)
        imageView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi/2))
        UIView.setAnimationDidStop(#selector(ViewController.animationEnd))
        UIView.commitAnimations()
        
    }
    
    func animationEnd() {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationCurve(UIViewAnimationCurve.linear)
        UIView.setAnimationDuration(0.1)
         index = index + 1
        imageView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double(index)*Double.pi/2))
        UIView.setAnimationDidStop(#selector(ViewController.animationEnd))
       
        UIView.commitAnimations()
    }
    
    func buttonAction() {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(2)
//        UIView.setAnimationCurve(UIViewAnimationCurve.easeOut)
        loginButton.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
        loginButton.frame = CGRect.init(x: 400, y: 0, width: loginButton.frame.width*0.1, height: loginButton.frame.height*0.1)
        loginButton.alpha = 0
        UIView.commitAnimations()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.loginButtonRound?.alpha = 0
        UIView.animate(withDuration: 4) {
            self.loginButtonRound?.alpha = 1
            self.loginButtonRound?.layer.cornerRadius  = 10
        }
    }



}

