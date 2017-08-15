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
    var displaylink:CADisplayLink?
    var index:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView()
        imageView?.frame = UIScreen.main.bounds
        imageView?.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(imageView!)
        index = 0
        displaylink = CADisplayLink.init(target: self, selector: #selector(ViewController.refushImage))
        displaylink?.frameInterval = 1
        displaylink?.add(to: RunLoop.current, forMode: RunLoopMode.defaultRunLoopMode)
    }
    func refushImage(){
        NSLog("%d",index)
        imageView?.image = UIImage(named: "\(index).png")
        index += 1
        if(index == 67){
            displaylink?.remove(from: RunLoop.current, forMode: RunLoopMode.defaultRunLoopMode)
            index -= 1
            imageView?.image = UIImage(named: "\(index).png")
        }
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

