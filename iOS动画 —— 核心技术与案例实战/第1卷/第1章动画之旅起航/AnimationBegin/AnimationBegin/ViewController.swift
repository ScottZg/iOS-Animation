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

        loginButton = UIButton(frame: CGRect(x:-394,y:230, width:self.view.frame.width-20*2,height:50))
        loginButton!.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton!.setTitle("登陆", for: UIControlState.normal)
        self.view.addSubview(loginButton!)
    }
     
    override func viewWillAppear(_ animated: Bool) {
        
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDuration(1)//动画周期设置
        loginButton!.frame = CGRect(x:20,y:loginButton!.frame.origin.y,width:loginButton!.frame.width,height:loginButton!.frame.height)//动画位置设置
        UIView.commitAnimations()//动画提交
 
 
        /*
        UIView.animate(withDuration: 1, animations: {
            self.loginButton!.frame = CGRect(x:20,y:self.loginButton!.frame.origin.y,width:self.loginButton!.frame.width,height:self.loginButton!.frame.height)
        })*/
    }
    

        
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

