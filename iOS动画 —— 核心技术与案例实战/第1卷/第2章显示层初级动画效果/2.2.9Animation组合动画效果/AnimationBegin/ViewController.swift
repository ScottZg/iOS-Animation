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
        loginButton = UIButton(frame: CGRect(x: 20, y: 230, width: self.view.frame.width-20*2,height: 50))
        loginButton!.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton!.setTitle("登陆", for: UIControlState.normal)
        loginButton!.addTarget(self, action: #selector(ViewController.loginAction), for: UIControlEvents.touchUpInside)
        self.view.addSubview(loginButton!)
    }
    
    func loginAction() {
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDuration(2)//动画周期设置
        let angle:CGFloat = CGFloat(M_PI);
        loginButton!.transform = CGAffineTransform(rotationAngle: angle)
        loginButton!.frame = CGRect(x: 400,y: 0,width: loginButton!.frame.width*0.1,height: loginButton!.frame.height*0.1)
        loginButton!.alpha = 0;
        UIView.commitAnimations()//动画提交
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

