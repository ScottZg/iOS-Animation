//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageViewAirport:UIImageView?
    var imageViewPlane:UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewAirport = UIImageView()
        imageViewAirport?.frame = UIScreen.main.bounds
        imageViewAirport?.image = UIImage(named: "Airport.png")
        imageViewAirport?.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(imageViewAirport!)
        
        imageViewPlane = UIImageView()
        imageViewPlane?.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        imageViewPlane?.image = UIImage(named: "Plane.png")
        imageViewPlane?.contentMode = UIViewContentMode.scaleAspectFit
        imageViewAirport!.addSubview(imageViewPlane!)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: UIViewKeyframeAnimationOptions.calculationModeCubic, animations: {() in
                self.imageViewPlane?.frame = CGRect(x: 300, y: 300, width: 50, height: 50)
            }, completion:{(finish) in
                print("done")
            })
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

