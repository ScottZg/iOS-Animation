//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var blackHole:BlackHoleView?
    var timer:Timer?
    var index:Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        blackHole = BlackHoleView()
        blackHole?.frame = UIScreen.main.bounds
        blackHole?.backgroundColor = UIColor.cyan
        self.view.addSubview(blackHole!)
        index = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0/30, target: self, selector: #selector(ViewController.refushImage), userInfo:nil, repeats: true)
    }
    func refushImage(){
        blackHole?.blackHoleIncrease(index)
        index += 1
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

