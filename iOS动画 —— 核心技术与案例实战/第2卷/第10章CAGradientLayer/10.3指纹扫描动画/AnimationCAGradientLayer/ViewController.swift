//
//  ViewController.swift
//  AnimationCAGradientLayer
//
//  Created by jones on 5/21/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//      part1:设置指纹扫描背景图片
        let image:UIImage = UIImage(named: "unLock.jpg")!
        let imageView:UIImageView = UIImageView(image: image)
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView.frame = self.view.bounds
        imageView.center = self.view.center
        self.view.backgroundColor = UIColor.black
        self.view.addSubview(imageView)
//      part2:设置Layer图层属性
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 105, y: 330, width: 200,height: 200)
        imageView.layer.addSublayer(gradientLayer)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.colors = [UIColor.clear.cgColor,UIColor.white.cgColor,UIColor.clear.cgColor]
        gradientLayer.locations = [0.0,0.1,0.2]
//      part3:设置CABasicAnimation
        let gradientAnimation:CABasicAnimation = CABasicAnimation()
        gradientAnimation.keyPath = "locations"
        gradientAnimation.fromValue = [0.0,0.1,0.2];
        gradientAnimation.toValue = [0.8,0.9,1.0];
        gradientAnimation.duration = 3.0;
        gradientAnimation.repeatCount = 10;
        gradientLayer.add(gradientAnimation, forKey: nil)
        
    }



}

