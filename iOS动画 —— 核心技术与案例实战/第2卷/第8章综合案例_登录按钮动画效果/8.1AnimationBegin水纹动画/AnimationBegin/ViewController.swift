//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton:MyButton = MyButton(frame: CGRect(x: 20, y: 230, width: self.view.frame.width-20*2,height: 50))
        loginButton.setTitle("登陆", for: UIControlState())
        loginButton.addTarget(self, action: #selector(ViewController.loginAction(_:event:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(loginButton)
    }

    func loginAction(_ sender:UIButton,event:UIEvent) {
        let bt:MyButton = sender as! MyButton
        bt.startButtonAnimation(sender, mevent: event)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

