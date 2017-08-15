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
    var timer:Timer?
    var index:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView()
        imageView?.frame = UIScreen.main.bounds
        imageView?.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(imageView!)
        index = 0
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.refushImage), userInfo:nil, repeats: true)
    }
    func refushImage(){
        NSLog("%d",index)
        imageView?.image = UIImage(named: "\(index).png")
        index += 1
        if(index == 67){
            timer?.invalidate()
            index -= 1
            imageView?.image = UIImage(named: "\(index).png")
        }
 
        /*
        imageView?.image = UIImage(named: "\(index).png")
        index++
        if(index == 67){
            index = 0;
        }
         */
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

